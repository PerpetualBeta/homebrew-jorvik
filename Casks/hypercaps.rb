cask "hypercaps" do
  version "2.0.9"
  sha256 "13be4de18ecd28ddf8cc3a9f80f70ef553c3805b250964a921085ef9a1310ace"

  url "https://github.com/PerpetualBeta/HyperCaps/releases/download/v#{version}/HyperCaps.zip",
      verified: "github.com/PerpetualBeta/HyperCaps/"
  name "HyperCaps"
  desc "Turn Caps Lock into a Hyper key for conflict-free shortcuts"
  homepage "https://jorviksoftware.cc/utilities/hypercaps"

  livecheck do
    url "https://jorviksoftware.cc/appcasts/hypercaps.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "HyperCaps.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.HyperCaps",
    "~/Library/HTTPStorages/cc.jorviksoftware.HyperCaps",
    "~/Library/Preferences/cc.jorviksoftware.HyperCaps.plist",
  ]
end
