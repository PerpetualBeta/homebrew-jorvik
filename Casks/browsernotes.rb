cask "browsernotes" do
  version "2.2.1"
  sha256 "117792bc362bc5b37612a190506adcd364ab21fa1418699ae8e0ae8370c0fde7"

  url "https://github.com/PerpetualBeta/BrowserNotes/releases/download/v#{version}/BrowserNotes.zip",
      verified: "github.com/PerpetualBeta/BrowserNotes/"
  name "Browser Notes"
  desc "Attach notes to web pages that reappear when you revisit"
  homepage "https://jorviksoftware.cc/utilities/browsernotes"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "BrowserNotes.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.BrowserNotes",
    "~/Library/HTTPStorages/cc.jorviksoftware.BrowserNotes",
    "~/Library/Preferences/cc.jorviksoftware.BrowserNotes.plist",
  ]
end
