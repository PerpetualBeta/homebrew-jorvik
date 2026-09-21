cask "browsernotes" do
  version "2.2.5"
  sha256 "77146af2b34d27bac78a2e78c3d20389169052537c95c43adab1eb0867fd5f55"

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
