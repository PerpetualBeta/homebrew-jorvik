cask "savecannes" do
  version "1.0.1"
  sha256 "28fbc866fe4eabef1d47bb8e0cefc22576bbe3e16fcce98b44c212c0088bb684"

  url "https://github.com/PerpetualBeta/SaveCannes/releases/download/v#{version}/SaveCannes.zip",
      verified: "github.com/PerpetualBeta/SaveCannes/"
  name "Save Cannes"
  desc "Screen saver that plays your own films, photographs and live streams"
  homepage "https://jorviksoftware.cc/screensavers/savecannes"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Save Cannes.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.SaveCannes",
    "~/Library/HTTPStorages/cc.jorviksoftware.SaveCannes",
    "~/Library/Preferences/cc.jorviksoftware.SaveCannes.plist",
  ]
end
