cask "browsernotes" do
  version "2.2.3"
  sha256 "75a05f23a09ad1dbd541a27969af1098004c3a80ab6aa66316446f7dc12bcfe4"

  url "https://github.com/PerpetualBeta/BrowserNotes/releases/download/v#{version}/BrowserNotes.zip"
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
