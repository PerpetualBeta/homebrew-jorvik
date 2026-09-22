cask "rainy-day" do
  version "1.1.24"
  sha256 "e9a0faa56d04b84ff7de2d854cd31b20b969d70f18d88b68490c709eaa632e89"

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
