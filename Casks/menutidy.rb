cask "menutidy" do
  version "2.1.0"
  sha256 "edc424136d40009d2580183c6242f5d401c74d135a8fb6bc0410103db2e5b27d"

  url "https://github.com/PerpetualBeta/MenuTidy/releases/download/v#{version}/MenuTidy.zip",
      verified: "github.com/PerpetualBeta/MenuTidy/"
  name "MenuTidy"
  desc "Menu bar manager that collapses third-party icons behind a chevron"
  homepage "https://jorviksoftware.cc/utilities/menutidy"

  livecheck do
    url "https://jorviksoftware.cc/appcasts/menutidy.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MenuTidy.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.MenuTidy",
    "~/Library/HTTPStorages/cc.jorviksoftware.MenuTidy",
    "~/Library/Preferences/cc.jorviksoftware.MenuTidy.plist",
  ]
end
