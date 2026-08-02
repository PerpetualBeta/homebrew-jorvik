cask "browsercommander" do
  version "2.0.8"
  sha256 "4caca7ccf6c17eaa99897363703c5e4009e81efcaef89794191a9c26ce164517"

  url "https://github.com/PerpetualBeta/BrowserCommander/releases/download/v#{version}/BrowserCommander.zip",
      verified: "github.com/PerpetualBeta/BrowserCommander/"
  name "Browser Commander"
  desc "Keyboard-driven back, forward and link navigation for browsers"
  homepage "https://jorviksoftware.cc/utilities/browsercommander"

  livecheck do
    url "https://jorviksoftware.cc/appcasts/browsercommander.xml"
    strategy :sparkle, &:short_version
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
