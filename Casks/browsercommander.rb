cask "browsercommander" do
  version "2.1.11"
  sha256 "0991953d922120244edaa9a030ae61ad3b6a5bd8470dc6ede400bceac4510e52"

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
