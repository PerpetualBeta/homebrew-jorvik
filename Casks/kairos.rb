cask "kairos" do
  version "1.1.3"
  sha256 "0f1eff5e085cf0c37f23209345b4b22870034351b50826aae994126e4338365b"

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
