cask "clipman" do
  version "2.0.20"
  sha256 "7b226ce674dfb603f9d6179a3e4bea49cca770236470beaead5b086af88e5fbb"

  url "https://github.com/PerpetualBeta/ClipMan/releases/download/v#{version}/ClipMan.zip",
      verified: "github.com/PerpetualBeta/ClipMan/"
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
