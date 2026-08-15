# homebrew-jorvik

A [Homebrew](https://brew.sh) tap for the [Jorvik Software](https://jorviksoftware.cc)
catalogue — every public app, game and screen saver, installable from the terminal.

Everything here is free, public domain, and notarised.

## Install

```sh
brew install --cask perpetualbeta/jorvik/menutidy
```

The fully-qualified name is deliberate. Since Homebrew 6.0.0 a third-party tap
has to be trusted before its casks will load, and naming the cask in full grants
trust to **that one cask** rather than to the whole tap. It also taps the
repository for you, so there is no separate `brew tap` step.

If you would rather use short names, trust the tap once and drop the prefix:

```sh
brew tap perpetualbeta/jorvik
brew trust --cask perpetualbeta/jorvik/menutidy
brew install --cask menutidy
```

### If `brew cleanup` or `brew upgrade` refuses to load a cask

Trusting one cask at a time is the smaller permission and it is the right
default, but it leaves every *other* cask in this tap untrusted — including the
ones you have never installed. Commands that walk the whole tap rather than a
cask you named, `brew cleanup` and `brew upgrade` among them, then stop on the
first one they do not have permission to read:

```
Error: Refusing to load cask perpetualbeta/jorvik/lookout from untrusted tap
```

Trusting the tap itself clears it, and covers casks added here in future before
they exist:

```sh
brew trust --tap perpetualbeta/jorvik
```

Installing by name is unaffected either way — `brew install --cask` grants trust
to the cask you named as part of the install, so a first-time install never
needs any of this.

## The catalogue

| Cask | What it is |
|---|---|
| `activespace` | Menu-bar Mission Control space indicator and switcher |
| `asciisaver` | Screen saver that renders the live camera feed as ASCII art |
| `ballast` | Menu-bar loudness leveller with per-track EBU R128 normalisation |
| `browsercommander` | Keyboard-driven back, forward and link navigation for browsers |
| `browsernotes` | Attach notes to web pages that reappear when you revisit |
| `calendarupcoming` | Menu-bar app that alerts you to upcoming calendar events |
| `citadel` | Doom-like first-person shooter set in the Strataris universe |
| `clipman` | Clipboard history in a browsable menu-bar popover |
| `copylens` | Capture any screen region as a table, as text, or as an image |
| `jorvik-hawkeye` | Magnify part of a screenshot into a callout and save it as PNG |
| `hypercaps` | Turn Caps Lock into a Hyper key for conflict-free shortcuts |
| `jorvik-daily-news` | RSS reader that publishes a finite, today-only newspaper |
| `lookout` | Menu-bar watcher for GitHub notifications, reviews and failing CI |
| `menutidy` | Menu bar manager that collapses third-party icons behind a chevron |
| `mirrorguard` | Block the accidental display-mirroring keyboard shortcut |
| `quitprotect` | Prevent accidental quits with double-press or hold-to-quit |
| `rainbowapple` | Replace the menu-bar Apple logo with the 1977 six-colour version |
| `rainy-day` | Screen saver of raindrops refracting eight atmospheric photographs |
| `reverie` | Screen saver drawing inked roulette curves over an animated wavescape |
| `screenlock` | Start the screen saver with a global hotkey |
| `shortcuthud` | HUD listing every keyboard shortcut in the frontmost app |
| `spaceman` | Capture and restore named window layouts per Mission Control space |
| `strataris` | Colony-defence shoot-'em-up with procedurally generated worlds |
| `windowpin` | Pin any window as a floating, always-on-top overlay |

`hawkeye` is taken by a formula in `homebrew/core`, which Homebrew treats as a
hard conflict, so that one carries the vendor prefix Homebrew's own convention
calls for: **`jorvik-hawkeye`**.

`ballast` and `spaceman` collide with unrelated *casks* in `homebrew/cask`,
which is permitted. Installing by the fully-qualified name always resolves to
the Jorvik one; only bare short names are ambiguous, and only if you have both
taps.

## Updates

Most of these apps update themselves through [Sparkle](https://sparkle-project.org),
so their casks carry `auto_updates true`: Homebrew installs them and then stays
out of the way, and `brew upgrade` will not fight the in-app updater. Use
`brew upgrade --cask --greedy` if you want Homebrew to reinstall them anyway.

**`reverie` is the exception.** It ships as a `.saver` bundle, which has no
persistent process of its own in which to run an updater, so it has no Sparkle
feed and Homebrew is genuinely its update path.

`asciisaver` was in the same position until version 2.0, when it became a
regular app and gained Sparkle along with everything else.

## Requirements

macOS 14 (Sonoma) or later for everything, with two exceptions the casks
declare and Homebrew will enforce:

- **`ballast`** needs macOS 15 (Sequoia)
- **`citadel`** is Apple silicon only — it is a real-time Metal renderer tuned
  to a 16.7 ms frame budget, and every measurement behind that tuning was taken
  on Apple silicon

## Maintaining this tap

The casks are generated, not hand-written. `tools/apps.json` holds the facts
that rarely change (bundle name, bundle ID, product page, description);
everything version-shaped is read live from the GitHub releases:

```sh
./tools/generate-casks.py                # update casks whose release moved
./tools/generate-casks.py --check        # exit 1 if any cask is stale
./tools/generate-casks.py --force        # rewrite all (after a template change)
./tools/generate-casks.py --refresh-sha  # re-download and re-checksum everything
```

A published tag is immutable, so a `--force` run reuses the checksums already
recorded rather than downloading two dozen releases again. Use `--refresh-sha`
if you genuinely need to re-verify them.

A scheduled workflow runs the generator daily and commits any change, so the
tap follows new releases without anyone touching it.

To validate before pushing:

```sh
brew style perpetualbeta/jorvik
brew audit --cask --online --strict --tap=perpetualbeta/jorvik
```

## Licence

The casks in this repository are public domain, like the software they install.
