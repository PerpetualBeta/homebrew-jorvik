cask "browsercommander" do
  version "2.1.4"
  sha256 "274cf36ef673d1a15ddee363ba7ab837a543de61496cb3f82fd897619598ca97"

  url "https://github.com/PerpetualBeta/BrowserCommander/releases/download/v#{version}/BrowserCommander.zip"
  name "Browser Commander"
  desc "Keyboard-driven back, forward and link navigation for browsers"
  homepage "https://jorviksoftware.cc/utilities/browsercommander"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "BrowserCommander.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.BrowserCommander",
    "~/Library/HTTPStorages/cc.jorviksoftware.BrowserCommander",
    "~/Library/Preferences/cc.jorviksoftware.BrowserCommander.plist",
  ]
end
