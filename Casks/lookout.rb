cask "lookout" do
  version "1.1.4"
  sha256 "1c6e60b243f1c8e57ba8758dff7c27bf81557342514474d698c7e3c3351fd78a"

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
