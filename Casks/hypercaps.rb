cask "hypercaps" do
  version "2.0.16"
  sha256 "19bb70b069515b08ca90f90665daad44fc28e14d93d0748b1be12a9b37fd59fb"

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
