cask "mirrorguard" do
  version "1.0.18"
  sha256 "6d9d6641e95679f0e3710d81f62d0ff28d38c6fb40083e858d7b9d6ec51c4e40"

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
