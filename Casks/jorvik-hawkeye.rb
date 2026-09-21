cask "jorvik-hawkeye" do
  version "1.0.5"
  sha256 "9053f16ca64566dff690c05e30b6d3ec7f7caf3ee3359d710bd3e5642342ee1a"

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
