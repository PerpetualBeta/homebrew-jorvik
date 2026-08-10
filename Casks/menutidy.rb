cask "menutidy" do
  version "2.1.1"
  sha256 "4087d347027a3490149bf19d4567f2dac10e7d206389e069c8cc532284aa42d4"

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
