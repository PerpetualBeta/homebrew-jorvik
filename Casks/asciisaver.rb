cask "asciisaver" do
  version "1.3.7"
  sha256 "24c78de0ef6816d01d54401e6d098ed1a6c2925ebcd04dc88c2a1590552b42d2"

  url "https://github.com/PerpetualBeta/ASCIISaver/releases/download/v#{version}/ASCIISaver.pkg",
      verified: "github.com/PerpetualBeta/ASCIISaver/"
  name "ASCII Saver"
  desc "Screen saver that renders the live camera feed as ASCII art"
  homepage "https://jorviksoftware.cc/screensavers/asciisaver"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  pkg "ASCIISaver.pkg"

  uninstall pkgutil: "com.jorviksoftware.ASCIISaver.*"

  zap trash: [
    "~/Library/Caches/com.jorviksoftware.ASCIISaver",
    "~/Library/HTTPStorages/com.jorviksoftware.ASCIISaver",
    "~/Library/Preferences/com.jorviksoftware.ASCIISaver.plist",
  ]
end
