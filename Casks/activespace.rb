cask "activespace" do
  version "2.3.2"
  sha256 "713a4761702fb3d76195fb61fa53877bf077c0015b125318c6d629a6611dae4a"

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
