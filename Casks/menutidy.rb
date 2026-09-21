cask "menutidy" do
  version "2.3.1"
  sha256 "55434a1c46782ef7c795335a0fbd1b4853c052a36d0b70f227c198c3ba8d8c18"

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
