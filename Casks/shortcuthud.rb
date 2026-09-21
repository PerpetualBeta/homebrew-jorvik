cask "shortcuthud" do
  version "2.0.14"
  sha256 "4d423aa1bc1f8f81916c030d2c6bd91ad28a0e43f59374fd1d2169e4f66ffe97"

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
