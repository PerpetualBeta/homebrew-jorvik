cask "browsernotes" do
  version "2.0.10"
  sha256 "2586d915dcfd95e533083543fbd699775ae09afce0936e7bbf17f136df4887af"

  url "https://github.com/PerpetualBeta/BrowserNotes/releases/download/v#{version}/BrowserNotes.zip",
      verified: "github.com/PerpetualBeta/BrowserNotes/"
  name "Browser Notes"
  desc "Attach notes to web pages that reappear when you revisit"
  homepage "https://jorviksoftware.cc/utilities/browsernotes"

  livecheck do
    url "https://jorviksoftware.cc/appcasts/browsernotes.xml"
    strategy :sparkle, &:short_version
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
