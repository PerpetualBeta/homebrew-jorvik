cask "activespace" do
  version "2.2.10"
  sha256 "26e2988e5ba25d3920ba1a8b4991b9cdd30a99f53c6afe71d5862cb1b5e8c3ba"

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
