cask "copylens" do
  version "1.1.2"
  sha256 "7ba5ba393991f4fe21ba0e30cb2870634b40a3e07aed66dedad7565014c478fe"

  url "https://github.com/PerpetualBeta/CopyLens/releases/download/v#{version}/CopyLens.zip",
      verified: "github.com/PerpetualBeta/CopyLens/"
  name "CopyLens"
  desc "Capture any screen region as a table, as text, or as an image"
  homepage "https://jorviksoftware.cc/utilities/copylens"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "CopyLens.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.CopyLens",
    "~/Library/HTTPStorages/cc.jorviksoftware.CopyLens",
    "~/Library/Preferences/cc.jorviksoftware.CopyLens.plist",
  ]
end
