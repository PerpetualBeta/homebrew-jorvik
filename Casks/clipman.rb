cask "clipman" do
  version "2.0.29"
  sha256 "f378d271c77fcc6455c9c9e619b2ae4a106cdf70f5c1b91df9e72793137bd95d"

  url "https://github.com/PerpetualBeta/ClipMan/releases/download/v#{version}/ClipMan.zip"
  name "ClipMan"
  desc "Clipboard history in a browsable menu-bar popover"
  homepage "https://jorviksoftware.cc/utilities/clipman"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ClipMan.app"

  zap trash: [
    "~/Library/Caches/com.jorviksoftware.clipman",
    "~/Library/HTTPStorages/com.jorviksoftware.clipman",
    "~/Library/Preferences/com.jorviksoftware.clipman.plist",
  ]
end
