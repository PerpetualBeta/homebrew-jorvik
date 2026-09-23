cask "mirrorguard" do
  version "1.0.19"
  sha256 "1875ba30df51f5f8c4beef3ff9adc77bff6a7cf28b798d0af3b5df3611201043"

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
