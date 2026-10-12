cask "asciisaver" do
  version "2.1.4"
  sha256 "17aede8f91771e63c1a22048b37e0587669d5ee3e8809b9d5407c42de3f23790"

  url "https://github.com/PerpetualBeta/ASCIISaver/releases/download/v#{version}/ASCIISaver.zip"
  name "ASCII Saver"
  desc "Screen saver that renders the live camera feed as ASCII art"
  homepage "https://jorviksoftware.cc/screensavers/asciisaver"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ASCII Saver.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.ASCIISaver",
    "~/Library/HTTPStorages/cc.jorviksoftware.ASCIISaver",
    "~/Library/Preferences/cc.jorviksoftware.ASCIISaver.plist",
  ]
end
