cask "mirrorguard" do
  version "1.0.16"
  sha256 "1f317d626cfabbdfe6b156f73494cf59ea162264ac6e854061512edfb1c7d4a6"

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
