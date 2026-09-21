cask "hypercaps" do
  version "2.0.15"
  sha256 "793bae45dadace3369d4037b44254b76c777fb3b76c1df703b7fa0cc9d3584fb"

  url "https://github.com/PerpetualBeta/HyperCaps/releases/download/v#{version}/HyperCaps.zip"
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
