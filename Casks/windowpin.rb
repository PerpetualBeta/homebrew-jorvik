cask "windowpin" do
  version "2.1.9"
  sha256 "dc9d4563b260fc46f7b18837b7b756bf3c702afd30cd55cb7a48639e94411e06"

  url "https://github.com/PerpetualBeta/WindowPin/releases/download/v#{version}/WindowPin.zip"
  name "WindowPin"
  desc "Pin any window as a floating, always-on-top overlay"
  homepage "https://jorviksoftware.cc/utilities/windowpin"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "WindowPin.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.WindowPin",
    "~/Library/HTTPStorages/cc.jorviksoftware.WindowPin",
    "~/Library/Preferences/cc.jorviksoftware.WindowPin.plist",
  ]
end
