cask "screenlock" do
  version "2.0.14"
  sha256 "90ce2adc61a8b7593e75f96aafa8dfa527b790d20dcf5e4d64e759d32dd10634"

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
