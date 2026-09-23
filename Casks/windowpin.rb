cask "windowpin" do
  version "2.1.12"
  sha256 "aa1e5789a4aea5c75a6358d9a2bb9c41cf63c38531e0f357971db389321accac"

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
