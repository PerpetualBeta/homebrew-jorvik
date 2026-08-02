cask "reverie" do
  version "1.0.6"
  sha256 "40076bf2e6a9bb61ebc554b3ef3c88266c34a585788f621ac0efa9bb44b40b18"

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
