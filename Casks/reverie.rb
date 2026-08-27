cask "reverie" do
  version "1.0.9"
  sha256 "cd2e56a760a4286bccd7180a90022a01f4ba7dcd139afc40f9a1ffcf2f1e5676"

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
