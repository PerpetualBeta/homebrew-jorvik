cask "lookout" do
  version "1.3.2"
  sha256 "5f2e68093f821799e006e943c7a78e657b55d5f322e633b15f4aaa5c6bfd1f01"

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
