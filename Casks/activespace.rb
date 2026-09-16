cask "activespace" do
  version "2.2.0"
  sha256 "cdcf0cf7a0816970d015e888a390d8445c4ddd916b9919a28659c13d7c9f7559"

  url "https://github.com/PerpetualBeta/ActiveSpace/releases/download/v#{version}/ActiveSpace.zip"
  name "ActiveSpace"
  desc "Menu-bar Mission Control space indicator and switcher"
  homepage "https://jorviksoftware.cc/utilities/activespace"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ActiveSpace.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.ActiveSpace",
    "~/Library/HTTPStorages/cc.jorviksoftware.ActiveSpace",
    "~/Library/Preferences/cc.jorviksoftware.ActiveSpace.plist",
  ]
end
