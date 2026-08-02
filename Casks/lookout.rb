cask "lookout" do
  version "1.0.9"
  sha256 "3b2307d77aea3ce99f0a12e2a44dafe9bf9b165c9ddd6b9c7df869a5ce0cc2e0"

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
