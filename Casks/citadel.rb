cask "citadel" do
  version "1.0.1"
  sha256 "bc8e81825b63539fd954635e5d8807a8c0efbd53819d1075841d1d7f1a1cb80b"

  url "https://github.com/PerpetualBeta/Citadel/releases/download/v#{version}/Citadel.zip",
      verified: "github.com/PerpetualBeta/Citadel/"
  name "Citadel"
  desc "Doom-like first-person shooter set in the Strataris universe"
  homepage "https://jorviksoftware.cc/games/citadel"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Citadel.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.Citadel",
    "~/Library/HTTPStorages/cc.jorviksoftware.Citadel",
    "~/Library/Preferences/cc.jorviksoftware.Citadel.plist",
  ]
end
