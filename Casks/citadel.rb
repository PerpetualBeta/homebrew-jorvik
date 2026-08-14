cask "citadel" do
  version "1.1.1"
  sha256 "6427fabeafcf53ea8114101e228e85b335a5ce045a30176c0b2d9690f712b54a"

  url "https://github.com/PerpetualBeta/Citadel/releases/download/v#{version}/Citadel.zip",
      verified: "github.com/PerpetualBeta/Citadel/"
  name "Citadel"
  desc "Doom-like first-person shooter set in the Strataris universe"
  homepage "https://jorviksoftware.cc/games/citadel"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Citadel.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.Citadel",
    "~/Library/HTTPStorages/cc.jorviksoftware.Citadel",
    "~/Library/Preferences/cc.jorviksoftware.Citadel.plist",
  ]
end
