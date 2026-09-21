cask "ballast" do
  version "1.1.12"
  sha256 "57688de64c5403c0ed6e53e180d29c51ba4c2f880993ef5be8c89946e033f84b"

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
