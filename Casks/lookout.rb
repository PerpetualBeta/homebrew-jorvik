cask "lookout" do
  version "1.1.0"
  sha256 "bd1989430f2afc498df0238bf6da0a32dbf3d05c07bc3f570992a7e13cc921df"

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
