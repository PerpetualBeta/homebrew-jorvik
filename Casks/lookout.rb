cask "lookout" do
  version "1.2.2"
  sha256 "c4dcc1549dca5bda79d6ba511e38b183c993616167541ea76cce107b3f9d6c81"

  url "https://github.com/PerpetualBeta/Lookout/releases/download/v#{version}/Lookout.zip"
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
