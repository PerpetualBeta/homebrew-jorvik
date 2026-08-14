cask "asciisaver" do
  version "2.0.2"
  sha256 "00717c03eedfcbe4560221bf566d40bd4103e496829bc5313c8bb840f5bd7667"

  url "https://github.com/PerpetualBeta/ASCIISaver/releases/download/v#{version}/ASCIISaver.zip",
      verified: "github.com/PerpetualBeta/ASCIISaver/"
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
