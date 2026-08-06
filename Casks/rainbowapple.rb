cask "rainbowapple" do
  version "2.0.12"
  sha256 "0e58312d3a3857cd7811783693964e5f4069715d0328facd71a835c876afa667"

  url "https://github.com/PerpetualBeta/RainbowApple/releases/download/v#{version}/RainbowApple.zip",
      verified: "github.com/PerpetualBeta/RainbowApple/"
  name "RainbowApple"
  desc "Replace the menu-bar Apple logo with the 1977 six-colour version"
  homepage "https://jorviksoftware.cc/utilities/rainbowapple"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "RainbowApple.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.RainbowApple",
    "~/Library/HTTPStorages/cc.jorviksoftware.RainbowApple",
    "~/Library/Preferences/cc.jorviksoftware.RainbowApple.plist",
  ]
end
