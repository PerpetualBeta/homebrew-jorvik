cask "asciisaver" do
  version "1.3.7"
  sha256 "ef3fdb8704765b9e20bfa6f00e5024f2624db9cb85e248f3be86feb2782b0f76"

  url "https://github.com/PerpetualBeta/ASCIISaver/releases/download/v#{version}/ASCIISaver.zip",
      verified: "github.com/PerpetualBeta/ASCIISaver/"
  name "ASCII Saver"
  desc "Screen saver that renders the live camera feed as ASCII art"
  homepage "https://jorviksoftware.cc/screensavers/asciisaver"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  screen_saver "ASCIISaver.saver"

  zap trash: [
    "~/Library/Caches/com.jorviksoftware.ASCIISaver",
    "~/Library/HTTPStorages/com.jorviksoftware.ASCIISaver",
    "~/Library/Preferences/com.jorviksoftware.ASCIISaver.plist",
  ]
end
