cask "windowpin" do
  version "2.1.10"
  sha256 "576dc61042515ec30b7c68105946e16e800aa7317a1a002aa9c0997903b8697e"

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
