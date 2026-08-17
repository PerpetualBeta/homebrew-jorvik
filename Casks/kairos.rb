cask "kairos" do
  version "1.0.0"
  sha256 "9186e363ee14f2a0a6e0ffd1d376b3a5ea87d4a76acc648ecfa15ac93a972925"

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
