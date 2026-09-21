cask "clipman" do
  version "2.0.25"
  sha256 "2f6c5972600283aec75104cdb62cad3718f0df10584ca0ce890fe2ef89b24c9b"

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
