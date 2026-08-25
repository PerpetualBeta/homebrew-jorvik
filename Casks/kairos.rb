cask "kairos" do
  version "1.0.1"
  sha256 "3ecfcd5acc8ed48b0d8a205de8ce5c9b3ae06a83850db84ef40218f7d8df8f40"

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
