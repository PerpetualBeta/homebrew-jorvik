#!/usr/bin/env python3
"""Regenerate the Jorvik casks from the live GitHub releases.

Facts that change on every release — version and sha256 — are derived here.
Facts that almost never change — the bundle name, the bundle ID, the product
page, the description — live in tools/apps.json, because deriving them would
mean downloading and unpacking all two dozen bundles on every run.

A zip is only downloaded when the released version differs from the version
already recorded in the cask, so a no-op run costs 24 API calls and nothing
else.

    ./tools/generate-casks.py               # update casks that have moved
    ./tools/generate-casks.py --force       # rewrite all (after a template change)
    ./tools/generate-casks.py --refresh-sha # re-download and re-checksum all
    ./tools/generate-casks.py --check       # exit 1 if anything is out of date
"""

import argparse
import hashlib
import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CASKS = ROOT / "Casks"
APPS = json.loads((ROOT / "tools" / "apps.json").read_text())
OWNER = "PerpetualBeta"


def latest_release(repo):
    """Return (tag, version) for the newest release.

    Goes through `gh` rather than plain HTTP so the request is authenticated:
    anonymous api.github.com allows 60 calls an hour, which two runs of this
    script will exhaust. In CI, `gh` picks up GITHUB_TOKEN from the environment.
    """
    out = subprocess.run(
        ["gh", "api", f"repos/{OWNER}/{repo}/releases/latest", "--jq", ".tag_name"],
        capture_output=True, text=True, check=True,
    )
    tag = out.stdout.strip()
    return tag, tag.lstrip("v")


def current_sha(token):
    """The sha256 already written in the cask, or None."""
    path = CASKS / f"{token}.rb"
    if not path.exists():
        return None
    m = re.search(r'^\s*sha256 "([0-9a-f]{64})"', path.read_text(), re.M)
    return m.group(1) if m else None


def sha256_of(repo, tag, asset):
    """Download a release asset and return its sha256.

    Uses `gh` rather than urllib so that a private repo still resolves; the
    public ones work either way.
    """
    out = subprocess.run(
        ["gh", "release", "download", tag, "--repo", f"{OWNER}/{repo}",
         "--pattern", asset, "--output", "-"],
        capture_output=True, check=True,
    )
    return hashlib.sha256(out.stdout).hexdigest()


def current_version(token):
    """The version already written in the cask, or None."""
    path = CASKS / f"{token}.rb"
    if not path.exists():
        return None
    m = re.search(r'^\s*version "([^"]+)"', path.read_text(), re.M)
    return m.group(1) if m else None


def render(repo, app, version, sha):
    """Produce the cask source for one app."""
    q = '"'
    lines = [
        f"cask {q}{app['token']}{q} do",
        f'  version "{version}"',
        f'  sha256 "{sha}"',
        "",
        f'  url "https://github.com/{OWNER}/{repo}/releases/download/v#{{version}}/{app["zipName"]}",',
        f'      verified: "github.com/{OWNER}/{repo}/"',
        f'  name "{app["name"]}"',
        f'  desc "{app["desc"]}"',
        f'  homepage "{app["homepage"]}"',
        "",
        "  livecheck do",
    ]

    # Every cask livechecks the GitHub release, including the 22 that have a
    # Sparkle appcast.
    #
    # The appcast looks like the more authoritative source, and locally it
    # works, but jorviksoftware.cc sits behind Cloudflare and the appcasts are
    # not served to a GitHub Actions runner — livecheck came back empty and all
    # 22 failed audit in CI while the two github_latest savers passed. Reading
    # the release also means livecheck and the url stanza resolve from the same
    # place, so they cannot disagree.
    lines += ["    url :url", "    strategy :github_latest"]

    lines += ["  end", ""]

    # A retired app. Homebrew prints the reason on every install and upgrade,
    # and existing installs keep working, so nobody is cut off by it. Stanza
    # order matters to rubocop: deprecate! sits after livecheck and before
    # auto_updates.
    if app.get("deprecate"):
        d = app["deprecate"]
        lines.append(f'  deprecate! date: "{d["date"]}", because: "{d["because"]}"')
        lines.append("")

    if app["appcast"]:
        # Sparkle owns updates; without this brew would fight it and report a
        # version mismatch every time the app updated itself.
        lines.append("  auto_updates true")
    if app["arch"]:
        lines.append(f'  depends_on arch: :{app["arch"]}')
    # The bare symbol is Homebrew's preferred spelling and already means
    # "this version or newer" for a cask; ">= :sonoma" trips the OSDependsOn cop.
    lines.append(f'  depends_on macos: :{app["macos"]}')
    lines.append("")

    if app.get("artifact") == "pkg":
        # Some products are more than one bundle and the installer is the only
        # thing that places all of them. ASCII Saver is the case in point: its
        # .pkg carries both the .saver and the camera agent the saver needs in
        # order to be granted camera access, so shipping just the zipped .saver
        # would install something that cannot work.
        lines.append(f'  pkg "{app["zipName"]}"')
        lines.append("")
        lines.append(f'  uninstall pkgutil: "{app["pkgutil"]}"')
    else:
        stanza = "screen_saver" if app["kind"] == "saver" else "app"
        lines.append(f'  {stanza} "{app["bundle"]}"')
    lines.append("")

    bid = app["bundleID"]
    paths = [
        f"~/Library/Caches/{bid}",
        f"~/Library/HTTPStorages/{bid}",
        f"~/Library/Preferences/{bid}.plist",
    ]
    lines.append("  zap trash: [")
    lines += [f'    "{p}",' for p in paths]
    lines.append("  ]")
    lines.append("end")
    return "\n".join(lines) + "\n"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--force", action="store_true", help="rewrite every cask")
    ap.add_argument("--check", action="store_true", help="exit 1 if out of date")
    ap.add_argument("--refresh-sha", action="store_true",
                    help="re-download every asset and recompute checksums")
    args = ap.parse_args()

    CASKS.mkdir(exist_ok=True)
    changed, failed = [], []

    for repo, app in sorted(APPS.items()):
        token = app["token"]
        try:
            tag, version = latest_release(repo)
        except Exception as e:  # noqa: BLE001 - report and carry on
            failed.append(f"{repo}: {e}")
            continue

        # --refresh-sha implies --force: asking for fresh checksums and then
        # skipping every cask whose version happens to be unchanged would
        # discard exactly the work that was requested.
        rewrite = args.force or args.refresh_sha
        have = current_version(token)
        if have == version and not rewrite:
            continue

        if args.check:
            changed.append(f"{token}: {have} -> {version}")
            continue

        # Only fetch the zip when we actually need a new checksum. A --force
        # run after a template change would otherwise re-download every
        # release for checksums we already hold and that cannot have moved:
        # a published tag is immutable.
        sha = None if args.refresh_sha else (current_sha(token) if have == version else None)
        if sha is None:
            try:
                sha = sha256_of(repo, tag, app["zipName"])
            except subprocess.CalledProcessError as e:
                failed.append(f"{repo}: download failed: {e.stderr.decode()[:120]}")
                continue

        (CASKS / f"{token}.rb").write_text(render(repo, app, version, sha))
        changed.append(f"{token}: {have or 'new'} -> {version}")

    for line in changed:
        print("  updated" if not args.check else "  stale  ", line)
    for line in failed:
        print("  FAILED ", line, file=sys.stderr)

    if failed:
        return 2
    if args.check and changed:
        return 1
    if not changed:
        print("  all casks up to date")
    return 0


if __name__ == "__main__":
    sys.exit(main())
