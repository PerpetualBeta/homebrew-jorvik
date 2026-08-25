cask "jorvik-hawkeye" do
  version "1.0.4"
  sha256 "289c8a120e1679ae5e2a292601f907899e73790b22eb1ad186847b203c18de55"

  url "https://github.com/PerpetualBeta/HawkEye/releases/download/v#{version}/HawkEye.zip",
      verified: "github.com/PerpetualBeta/HawkEye/"
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
