cask "savecannes" do
  version "1.4.0"
  sha256 "4e7628165f8c686d268c1130840611188086b4988308c3e6f1dcddb62c64bc8e"

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
