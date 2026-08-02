cask "spaceman" do
  version "2.0.8"
  sha256 "b130f006f937841807d2371c2fc6b9c66835bc3cc1d959d2ab1c602c16aae129"

  url "https://github.com/PerpetualBeta/SpaceMan/releases/download/v#{version}/SpaceMan.zip",
      verified: "github.com/PerpetualBeta/SpaceMan/"
  name "SpaceMan"
  desc "Capture and restore named window layouts per Mission Control space"
  homepage "https://jorviksoftware.cc/utilities/spaceman"

  livecheck do
    url "https://jorviksoftware.cc/appcasts/spaceman.xml"
    strategy :sparkle, &:short_version
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
