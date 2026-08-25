cask "ballast" do
  version "1.1.7"
  sha256 "ac929ad0a9b5879e26c85731922f7e276fb3909a119480a720d40820e6bb9a2b"

  url "https://github.com/PerpetualBeta/Ballast/releases/download/v#{version}/Ballast.zip",
      verified: "github.com/PerpetualBeta/Ballast/"
  name "Ballast"
  desc "Menu-bar loudness leveller with per-track EBU R128 normalisation"
  homepage "https://jorviksoftware.cc/utilities/ballast"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Ballast.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.Ballast",
    "~/Library/HTTPStorages/cc.jorviksoftware.Ballast",
    "~/Library/Preferences/cc.jorviksoftware.Ballast.plist",
  ]
end
