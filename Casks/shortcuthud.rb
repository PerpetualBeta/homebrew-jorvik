cask "shortcuthud" do
  version "2.0.11"
  sha256 "523b950cb85e1156f64429df1000fa4aeee88f27b8175e912f4e8790b6522aaa"

  url "https://github.com/PerpetualBeta/ShortcutHUD/releases/download/v#{version}/ShortcutHUD.zip",
      verified: "github.com/PerpetualBeta/ShortcutHUD/"
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
