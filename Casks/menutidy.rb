cask "menutidy" do
  version "2.3.0"
  sha256 "e9a3c57e0a3faddab3c407a094f448efcb4622d18ed43f9a00c6cf1e1c4fe454"

  url "https://github.com/PerpetualBeta/MenuTidy/releases/download/v#{version}/MenuTidy.zip"
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
