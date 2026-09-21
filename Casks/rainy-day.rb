cask "rainy-day" do
  version "1.1.17"
  sha256 "6101bedd5258e5a412f41ff8be8332d977cae00d8a4113746238298f95ca146d"

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
