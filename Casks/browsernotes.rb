cask "browsernotes" do
  version "2.2.4"
  sha256 "b85adda78671cef6126e27528cdd6b56d0c305df8f40862db92ceef17f03d774"

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
