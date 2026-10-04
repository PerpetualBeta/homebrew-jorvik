cask "nomen" do
  version "1.0.0"
  sha256 "11c5937c9ee0275740f12e317fe5982f9df19f5dba48c664c7580da1f6fbeea0"

  url "https://github.com/PerpetualBeta/Nomen/releases/download/v#{version}/Nomen.zip"
  name "Nomen"
  desc "Rename screenshots by what they show, using on-device Apple Intelligence"
  homepage "https://jorviksoftware.cc/utilities/nomen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Nomen.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.Nomen",
    "~/Library/HTTPStorages/cc.jorviksoftware.Nomen",
    "~/Library/Preferences/cc.jorviksoftware.Nomen.plist",
  ]
end
