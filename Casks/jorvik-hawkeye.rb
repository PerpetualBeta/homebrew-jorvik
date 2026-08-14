cask "jorvik-hawkeye" do
  version "1.0.2"
  sha256 "10e671f33fe9ae4d3e985142e40cb8319958c4706fa926a0947d4486fce2f52d"

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
