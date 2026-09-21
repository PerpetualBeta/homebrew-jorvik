cask "ballast" do
  version "1.1.11"
  sha256 "863f277138d74546466468ef565829a6a006214b47bd012ee6c379a53302c5e6"

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
