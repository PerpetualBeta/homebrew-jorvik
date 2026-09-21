cask "shortcuthud" do
  version "2.0.15"
  sha256 "bf0e654366f58c7265a91aa8c6993fbf91697d8a0eb58dcca7a58784c9d87243"

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
