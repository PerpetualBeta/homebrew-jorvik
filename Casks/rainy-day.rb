cask "rainy-day" do
  version "1.1.20"
  sha256 "3ce899f22bd7e5d111e92ba9c77f47f91c1d7eaf2661515f0dc2ee533adcd347"

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
