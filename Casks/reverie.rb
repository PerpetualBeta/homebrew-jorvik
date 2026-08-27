cask "reverie" do
  version "1.0.8"
  sha256 "0f2298f8b398c3d4020557065555d6bb98f9e4e55f1e151eb8a30c7862b4319c"

  url "https://github.com/PerpetualBeta/Reverie/releases/download/v#{version}/Reverie.zip",
      verified: "github.com/PerpetualBeta/Reverie/"
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
