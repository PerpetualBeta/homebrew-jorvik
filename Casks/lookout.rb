cask "lookout" do
  version "1.1.5"
  sha256 "483e5c862a7050784ff737c70c32f2c516f08731a2e0abbe7cd721b20b45bbf8"

  url "https://github.com/PerpetualBeta/Lookout/releases/download/v#{version}/Lookout.zip",
      verified: "github.com/PerpetualBeta/Lookout/"
  name "Lookout"
  desc "Menu-bar watcher for GitHub notifications, reviews and failing CI"
  homepage "https://jorviksoftware.cc/utilities/lookout"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Lookout.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.Lookout",
    "~/Library/HTTPStorages/cc.jorviksoftware.Lookout",
    "~/Library/Preferences/cc.jorviksoftware.Lookout.plist",
  ]
end
