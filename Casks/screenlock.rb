cask "screenlock" do
  version "2.0.10"
  sha256 "d11ca95c7155736b84a03e36e6981dc9a92646d0fc9b9923b8bf0ce0f2561c56"

  url "https://github.com/PerpetualBeta/ScreenLock/releases/download/v#{version}/ScreenLock.zip",
      verified: "github.com/PerpetualBeta/ScreenLock/"
  name "ScreenLock"
  desc "Start the screen saver with a global hotkey"
  homepage "https://jorviksoftware.cc/utilities/screenlock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ScreenLock.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.ScreenLock",
    "~/Library/HTTPStorages/cc.jorviksoftware.ScreenLock",
    "~/Library/Preferences/cc.jorviksoftware.ScreenLock.plist",
  ]
end
