cask "asciisaver" do
  version "2.1.0"
  sha256 "83bae4e62955b0d845378c3cd0da203394e8bf0396970107938aabc0ff12098a"

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
