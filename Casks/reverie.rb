cask "reverie" do
  version "1.0.7"
  sha256 "cb76b05d6395f04ceca1ac97541051d50c01306ef956e5f675225b5e7ac0ff09"

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
