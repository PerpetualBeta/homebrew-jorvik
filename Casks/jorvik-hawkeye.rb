cask "jorvik-hawkeye" do
  version "1.0.13"
  sha256 "23a7fbc39f1bcd3e2c5f0cb7e47d3be122a3d18f5b1aec79a5db33cd71e6be85"

  url "https://github.com/PerpetualBeta/HawkEye/releases/download/v#{version}/HawkEye.zip"
  name "HawkEye"
  desc "Magnify part of a screenshot into a callout and save it as PNG"
  homepage "https://jorviksoftware.cc/utilities/hawkeye"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "HawkEye.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.HawkEye",
    "~/Library/HTTPStorages/cc.jorviksoftware.HawkEye",
    "~/Library/Preferences/cc.jorviksoftware.HawkEye.plist",
  ]
end
