cask "hypercaps" do
  version "2.0.17"
  sha256 "39620932e5ce9f6419e230619ef5755a767662f9d7cb9485c0d5f40e8acf10f8"

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
