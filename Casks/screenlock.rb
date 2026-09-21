cask "screenlock" do
  version "2.0.13"
  sha256 "dcde0fa29328257a844a2d3d85d86fc6239d39f6538d2215a90874d3300e7c33"

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
