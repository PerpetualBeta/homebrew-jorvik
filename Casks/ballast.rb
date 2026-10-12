cask "ballast" do
  version "1.1.17"
  sha256 "50264fa9f189d4b4c92948037f9f74742c40aa8d4f7e020fb166ce95d4d1342e"

  url "https://github.com/PerpetualBeta/Ballast/releases/download/v#{version}/Ballast.zip"
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
