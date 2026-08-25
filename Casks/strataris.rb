cask "strataris" do
  version "1.0.1"
  sha256 "33b392c9bd8929c1941605bc957bf90c997049ff6c7920772a9cfca7e03e6111"

  url "https://github.com/PerpetualBeta/Strataris/releases/download/v#{version}/Strataris.zip",
      verified: "github.com/PerpetualBeta/Strataris/"
  name "Strataris"
  desc "Colony-defence shoot-'em-up with procedurally generated worlds"
  homepage "https://jorviksoftware.cc/games/strataris"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Strataris.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.Strataris",
    "~/Library/HTTPStorages/cc.jorviksoftware.Strataris",
    "~/Library/Preferences/cc.jorviksoftware.Strataris.plist",
  ]
end
