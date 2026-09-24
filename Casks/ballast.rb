cask "ballast" do
  version "1.1.15"
  sha256 "e82f8e12f8b8bd75cae32ecd3666366c2f6c542d41e98d762a578b69b283e8c7"

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
