cask "asciisaver" do
  version "2.0.10"
  sha256 "db62b66429d1c2c3a0a19301d17e1d6a899afd9b5bdaf2bdfca6f5ca13159e6e"

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
