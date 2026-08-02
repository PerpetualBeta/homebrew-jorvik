cask "citadel" do
  version "1.0.0"
  sha256 "b93302af8c6f3462cfa3e2f40c6c2fcc28d0f7aa0e9b43a38692a2da74af630c"

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
