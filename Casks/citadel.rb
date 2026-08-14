cask "citadel" do
  version "1.1.0"
  sha256 "faf1be9e978d79420c905ed2fd1fc08fbd9daf3a87e5631cd2c0f96425167906"

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
