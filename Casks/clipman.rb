cask "clipman" do
  version "2.0.19"
  sha256 "44fe06475ddffa722cf2d2ed401dac84f97de9be7cbda77d2443dcbc49ec8f90"

  url "https://github.com/PerpetualBeta/ClipMan/releases/download/v#{version}/ClipMan.zip",
      verified: "github.com/PerpetualBeta/ClipMan/"
  name "ClipMan"
  desc "Clipboard history in a browsable menu-bar popover"
  homepage "https://jorviksoftware.cc/utilities/clipman"

  livecheck do
    url "https://jorviksoftware.cc/appcasts/clipman.xml"
    strategy :sparkle, &:short_version
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
