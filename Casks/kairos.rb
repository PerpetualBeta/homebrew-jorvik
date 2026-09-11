cask "kairos" do
  version "1.1.1"
  sha256 "fa7622c13c49eb251d7f2cd6bf13198fa436c4cc73651c7de1e307e15e95d0b0"

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
