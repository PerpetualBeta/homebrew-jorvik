cask "lookout" do
  version "1.1.1"
  sha256 "fd311a5465d2a08db1a00335a9964b497045b7f76c89d16f324a9a1cefeab951"

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
