cask "nomen" do
  version "1.0.2"
  sha256 "14f779412c171fa16b13476e72a0f694f90ec4cbb1f0826ea9fba7727ef0d2bc"

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
