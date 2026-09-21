cask "reverie" do
  version "1.0.10"
  sha256 "2f6bc4a4b43613b4b609eb844a13c53e6cf20ead94e386ddd62276542781cade"

  url "https://github.com/PerpetualBeta/Reverie/releases/download/v#{version}/Reverie.zip"
  name "Reverie"
  desc "Screen saver drawing inked roulette curves over an animated wavescape"
  homepage "https://jorviksoftware.cc/screensavers/reverie"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  screen_saver "Reverie.saver"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.Reverie",
    "~/Library/HTTPStorages/cc.jorviksoftware.Reverie",
    "~/Library/Preferences/cc.jorviksoftware.Reverie.plist",
  ]
end
