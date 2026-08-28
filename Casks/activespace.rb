cask "activespace" do
  version "2.1.19"
  sha256 "39ff90a323ca17313793bfa772e6cc8bd1d67b70d0e274cc4ba1efe036c43b16"

  url "https://github.com/PerpetualBeta/ActiveSpace/releases/download/v#{version}/ActiveSpace.zip",
      verified: "github.com/PerpetualBeta/ActiveSpace/"
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
