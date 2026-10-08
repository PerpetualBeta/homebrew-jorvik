cask "lookout" do
  version "1.3.1"
  sha256 "cd830fad9672c949bf13b307cd965feb56dbdf3d03ad09bef9e03b3d966b796b"

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
