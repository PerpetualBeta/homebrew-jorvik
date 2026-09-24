cask "savecannes" do
  version "1.3.3"
  sha256 "90cc326b985a276369006e3271c324517ff1c057bbafd3bfd251554fa081cfdb"

  url "https://github.com/PerpetualBeta/SaveCannes/releases/download/v#{version}/SaveCannes.zip"
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
