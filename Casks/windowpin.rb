cask "windowpin" do
  version "2.2.0"
  sha256 "b8a59cba91728706fe360eb9daf888186c7c9dff7708bbe66242efa81d64574b"

  url "https://github.com/PerpetualBeta/WindowPin/releases/download/v#{version}/WindowPin.zip"
  name "WindowPin"
  desc "Pin any window as a floating, always-on-top overlay"
  homepage "https://jorviksoftware.cc/utilities/windowpin"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "WindowPin.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.WindowPin",
    "~/Library/HTTPStorages/cc.jorviksoftware.WindowPin",
    "~/Library/Preferences/cc.jorviksoftware.WindowPin.plist",
  ]
end
