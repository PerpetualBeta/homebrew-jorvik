cask "shortcuthud" do
  version "2.0.9"
  sha256 "88ad66ec60066f27c5f8bc7ace8ce4909fddd7d795b7035493258ad8e2a15570"

  url "https://github.com/PerpetualBeta/ShortcutHUD/releases/download/v#{version}/ShortcutHUD.zip",
      verified: "github.com/PerpetualBeta/ShortcutHUD/"
  name "ShortcutHUD"
  desc "HUD listing every keyboard shortcut in the frontmost app"
  homepage "https://jorviksoftware.cc/utilities/shortcuthud"

  livecheck do
    url "https://jorviksoftware.cc/appcasts/shortcuthud.xml"
    strategy :sparkle, &:short_version
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
