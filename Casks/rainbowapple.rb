cask "rainbowapple" do
  version "2.0.20"
  sha256 "ac5be3f44f055913236d33e0fe204a873d6d3fac810f37c017cb92b482093ed1"

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
