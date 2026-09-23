cask "lookout" do
  version "1.2.1"
  sha256 "f1fdb9fd760b2eebfa2ca2925aaa36da377b5a44da19a15852f9798792983994"

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
