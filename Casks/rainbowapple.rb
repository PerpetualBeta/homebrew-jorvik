cask "rainbowapple" do
  version "2.0.23"
  sha256 "6758dc6b8e04d34d39bc3acceb909d3c0f8cce38951bf82755cd791fa5b2fe93"

  url "https://github.com/PerpetualBeta/RainbowApple/releases/download/v#{version}/RainbowApple.zip"
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
