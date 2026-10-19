cask "nomen" do
  version "1.0.4"
  sha256 "81e8d67f4c17c86a1437289108fda3dd8b4bb5ce75a3e44a410a2880c7dbca24"

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
