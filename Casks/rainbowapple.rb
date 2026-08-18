cask "rainbowapple" do
  version "2.0.15"
  sha256 "5e7bc39f5b14b2d56d5cdc907e17e2b7ec7e21be7f182568abe82ede17ac617a"

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
