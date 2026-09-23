cask "screenlock" do
  version "2.0.15"
  sha256 "38b6c2c1fd7a50dd6fee9999e90aa362ae1973bc5b87253dff43b59d6f5021ea"

  url "https://github.com/PerpetualBeta/ScreenLock/releases/download/v#{version}/ScreenLock.zip"
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
