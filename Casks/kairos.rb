cask "kairos" do
  version "1.1.0"
  sha256 "ca490e75344840ebbec27b0859ce7b7ca66f0f91f81ddd7747d5da98da41d60a"

  url "https://github.com/PerpetualBeta/Kairos/releases/download/v#{version}/Kairos.zip",
      verified: "github.com/PerpetualBeta/Kairos/"
  name "Kairos"
  desc "Front end for launchd: see and schedule your user agents"
  homepage "https://jorviksoftware.cc/apps/kairos"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Kairos.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.Kairos",
    "~/Library/HTTPStorages/cc.jorviksoftware.Kairos",
    "~/Library/Preferences/cc.jorviksoftware.Kairos.plist",
  ]
end
