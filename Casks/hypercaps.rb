cask "hypercaps" do
  version "2.0.10"
  sha256 "a504ec430b8ea6bf680122220c40106698de00dec2f50a06c8035fb1a2f229a0"

  url "https://github.com/PerpetualBeta/HyperCaps/releases/download/v#{version}/HyperCaps.zip",
      verified: "github.com/PerpetualBeta/HyperCaps/"
  name "HyperCaps"
  desc "Turn Caps Lock into a Hyper key for conflict-free shortcuts"
  homepage "https://jorviksoftware.cc/utilities/hypercaps"

  livecheck do
    url :url
    strategy :github_latest
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
