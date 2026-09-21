cask "clipman" do
  version "2.0.24"
  sha256 "5cdd7f2efec4af8c012eab55f1dbb4210434dca1a76ba9ad4dc56ee15a0e6fe0"

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
