cask "rainy-day" do
  version "1.1.14"
  sha256 "ef731d96d7a9b16ec404307fa300f9fb8fbea8faf1e52ab0c30ac4056614a716"

  url "https://github.com/PerpetualBeta/RainyDay/releases/download/v#{version}/RainyDay.zip",
      verified: "github.com/PerpetualBeta/RainyDay/"
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
