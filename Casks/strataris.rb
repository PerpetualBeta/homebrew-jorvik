cask "strataris" do
  version "1.0.0"
  sha256 "dbb9d113ce475690c4c3f0e8d81bd49dbffdd2ba83d4d0e60f57c8db53c29189"

  url "https://github.com/PerpetualBeta/Strataris/releases/download/v#{version}/Strataris.zip",
      verified: "github.com/PerpetualBeta/Strataris/"
  name "Strataris"
  desc "Colony-defence shoot-'em-up with procedurally generated worlds"
  homepage "https://jorviksoftware.cc/games/strataris"

  livecheck do
    url "https://jorviksoftware.cc/appcasts/strataris.xml"
    strategy :sparkle, &:short_version
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
