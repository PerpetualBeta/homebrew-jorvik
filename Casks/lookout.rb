cask "lookout" do
  version "1.2.0"
  sha256 "f2274a41db381f2c17177eb9a1e46bf4881f25a8621bd4849f8aa48154d769e7"

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
