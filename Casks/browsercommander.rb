cask "browsercommander" do
  version "2.1.5"
  sha256 "b91eb5df2fa41066ecabcdb8f64a098270b77188e807490afb325786f4afcc05"

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
