cask "ballast" do
  version "1.1.6"
  sha256 "3aaae9fff987217313cf20f0f01f4c0d989dd24521dd2f3943415eb038c3c899"

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
