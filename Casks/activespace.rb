cask "activespace" do
  version "2.2.9"
  sha256 "75f90618ad73dfd7f72a29dda03e5f069bb1c672a15f3e0274d2fae8e8512f84"

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
