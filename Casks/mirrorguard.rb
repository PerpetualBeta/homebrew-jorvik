cask "mirrorguard" do
  version "1.0.20"
  sha256 "50800af777c556348c14745e982482bedba0f9c6733f38c6d7ddfb578221d59a"

  url "https://github.com/PerpetualBeta/MirrorGuard/releases/download/v#{version}/MirrorGuard.zip"
  name "MirrorGuard"
  desc "Block the accidental display-mirroring keyboard shortcut"
  homepage "https://jorviksoftware.cc/utilities/mirrorguard"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MirrorGuard.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.mirror-guard",
    "~/Library/HTTPStorages/cc.jorviksoftware.mirror-guard",
    "~/Library/Preferences/cc.jorviksoftware.mirror-guard.plist",
  ]
end
