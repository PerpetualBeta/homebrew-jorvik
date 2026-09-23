cask "jorvik-hawkeye" do
  version "1.0.9"
  sha256 "eb78991f6a561a9850d1ba3c027a9856d79611eb6ffbdddf5d054474553cc91b"

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
