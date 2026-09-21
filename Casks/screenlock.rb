cask "screenlock" do
  version "2.0.12"
  sha256 "e6f8aee587988ca10519d2d88e3d9287434f0a4f954aefa89889fb914c01544f"

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
