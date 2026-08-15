cask "spaceman" do
  version "2.0.9"
  sha256 "23801a00c14d3020a81df4154bd62d470fbf1e47bcf9d97ab647d19900ffeffe"

  url "https://github.com/PerpetualBeta/SpaceMan/releases/download/v#{version}/SpaceMan.zip",
      verified: "github.com/PerpetualBeta/SpaceMan/"
  name "SpaceMan"
  desc "Capture and restore named window layouts per Mission Control space"
  homepage "https://jorviksoftware.cc/utilities/spaceman"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SpaceMan.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.SpaceMan",
    "~/Library/HTTPStorages/cc.jorviksoftware.SpaceMan",
    "~/Library/Preferences/cc.jorviksoftware.SpaceMan.plist",
  ]
end
