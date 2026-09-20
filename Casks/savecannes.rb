cask "savecannes" do
  version "1.2.0"
  sha256 "38831bfeda898d2cfe12de511af6db754b9dac00fa48245110f72808a0452677"

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
