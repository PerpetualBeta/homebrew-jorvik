cask "savecannes" do
  version "1.2.1"
  sha256 "ef673ff560c22fc4aaed95f7c75134fb0e7ca7c17d227e900dafd4aad2ecac1a"

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
