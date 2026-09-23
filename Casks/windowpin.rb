cask "windowpin" do
  version "2.1.11"
  sha256 "ca6a60ea67275d646b083e958656632fe9eac1233733a0226b190a96630c3b9a"

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
