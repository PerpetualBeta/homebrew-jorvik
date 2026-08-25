cask "menutidy" do
  version "2.1.4"
  sha256 "0283161c310f4e7de202a5619ad5afae47625bcb5e2d15bff9c1dd8402904c67"

  url "https://github.com/PerpetualBeta/MenuTidy/releases/download/v#{version}/MenuTidy.zip",
      verified: "github.com/PerpetualBeta/MenuTidy/"
  name "MenuTidy"
  desc "Menu bar manager that collapses third-party icons behind a chevron"
  homepage "https://jorviksoftware.cc/utilities/menutidy"

  livecheck do
    url :url
    strategy :github_latest
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
