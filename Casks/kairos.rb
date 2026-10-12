cask "kairos" do
  version "1.1.2"
  sha256 "fd1a46d065b3a2caea1a42f76fdc991d00242cc1f8b5e379a3f524011c87f1c5"

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
