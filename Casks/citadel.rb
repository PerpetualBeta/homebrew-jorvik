cask "citadel" do
  version "1.1.2"
  sha256 "e2ad3e6961548e33b698ca072157bd19209bd9b9fb0ed1e7c6e8bc7ab0287e7d"

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
