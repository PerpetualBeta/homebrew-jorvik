cask "shortcuthud" do
  version "2.0.18"
  sha256 "cb4fdad34797fa108574c603147267d6b638718c1ebdffb472b6f0b3a61e477a"

  url "https://github.com/PerpetualBeta/ShortcutHUD/releases/download/v#{version}/ShortcutHUD.zip"
  name "ShortcutHUD"
  desc "HUD listing every keyboard shortcut in the frontmost app"
  homepage "https://jorviksoftware.cc/utilities/shortcuthud"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ShortcutHUD.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.ShortcutHUD",
    "~/Library/HTTPStorages/cc.jorviksoftware.ShortcutHUD",
    "~/Library/Preferences/cc.jorviksoftware.ShortcutHUD.plist",
  ]
end
