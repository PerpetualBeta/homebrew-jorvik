cask "ballast" do
  version "1.1.4"
  sha256 "b256752113d4df81b239d3db3c02d084bd1b6c38e1705b3b894e6d74b090eb37"

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
