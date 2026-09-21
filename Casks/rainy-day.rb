cask "rainy-day" do
  version "1.1.18"
  sha256 "fbb81a1f4ef69faab8e675d5ec179323f0c3f863902f02f5578c04882f221246"

  url "https://github.com/PerpetualBeta/RainyDay/releases/download/v#{version}/RainyDay.zip"
  name "Rainy Day"
  desc "Screen saver of raindrops refracting eight atmospheric photographs"
  homepage "https://jorviksoftware.cc/screensavers/rainyday"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Rainy Day.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.RainyDay",
    "~/Library/HTTPStorages/cc.jorviksoftware.RainyDay",
    "~/Library/Preferences/cc.jorviksoftware.RainyDay.plist",
  ]
end
