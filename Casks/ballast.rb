cask "ballast" do
  version "1.1.14"
  sha256 "47ad921a5a69741adf87a09da257a9b8e4ede977cbd0e9238a67cbbbb94b1d4f"

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
