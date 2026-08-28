cask "mirrorguard" do
  version "1.0.15"
  sha256 "896e4dfb503f90ba553a6992fee4431d4f4103bc3368e36c17f09c13d860043f"

  url "https://github.com/PerpetualBeta/MirrorGuard/releases/download/v#{version}/MirrorGuard.zip",
      verified: "github.com/PerpetualBeta/MirrorGuard/"
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
