cask "spaceman" do
  version "2.0.10"
  sha256 "84093b39549ad07d0d3f20bf930cc6e2fc72e94da5fbdc4c06db9691c2d459fc"

  url "https://github.com/PerpetualBeta/SpaceMan/releases/download/v#{version}/SpaceMan.zip",
      verified: "github.com/PerpetualBeta/SpaceMan/"
  name "SpaceMan"
  desc "Capture and restore named window layouts per Mission Control space"
  homepage "https://jorviksoftware.cc/utilities/spaceman"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SpaceMan.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.SpaceMan",
    "~/Library/HTTPStorages/cc.jorviksoftware.SpaceMan",
    "~/Library/Preferences/cc.jorviksoftware.SpaceMan.plist",
  ]
end
