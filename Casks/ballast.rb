cask "ballast" do
  version "1.1.9"
  sha256 "7bcd86e15048baeaed1340a4f6278a479cd8c113c9766b5661ebbde78dacc58c"

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
