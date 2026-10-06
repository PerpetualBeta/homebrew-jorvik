cask "nomen" do
  version "1.0.1"
  sha256 "1b990cd54cf9fbbee8b8624fba5cc8ec3752ca839c40090b14b3f7b0f1b71065"

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
