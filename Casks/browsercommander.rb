cask "browsercommander" do
  version "2.1.3"
  sha256 "6c91a8440493bc0135ce192fc464664d36c1bbc37cebdf35c505e9a39660e5a0"

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
