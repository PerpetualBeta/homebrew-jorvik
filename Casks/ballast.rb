cask "ballast" do
  version "1.1.8"
  sha256 "2b05ce25a54aa6786a2abf7c7eff85ca3f97e2f98737ac58386a3748488498ac"

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
