cask "rainbowapple" do
  version "2.0.19"
  sha256 "18781d0b65ceca1151e1f5e00645e6a6b39f01437b60049b1a5fa6656984f88d"

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
