cask "kairos" do
  version "1.1.4"
  sha256 "ce1dbe6179399bf4ce4db7b18c8d2f9422138387ec41a873dadc025070c21d66"

  url "https://github.com/PerpetualBeta/Kairos/releases/download/v#{version}/Kairos.zip"
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
