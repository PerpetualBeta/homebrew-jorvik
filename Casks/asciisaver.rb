cask "asciisaver" do
  version "2.0.4"
  sha256 "35b8db68504fc6e1afeae52dc26ee10f0e3752c5f5772a3a260dab6b750d7eb9"

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
