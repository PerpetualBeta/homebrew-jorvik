cask "copylens" do
  version "1.1.7"
  sha256 "5b0ffecfc9e158e41bff173dfcc48399f50304b8f4084e6bdd55c7f52ed0f185"

  url "https://github.com/PerpetualBeta/CopyLens/releases/download/v#{version}/CopyLens.zip"
  name "CopyLens"
  desc "Capture any screen region as a table, as text, or as an image"
  homepage "https://jorviksoftware.cc/utilities/copylens"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "CopyLens.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.CopyLens",
    "~/Library/HTTPStorages/cc.jorviksoftware.CopyLens",
    "~/Library/Preferences/cc.jorviksoftware.CopyLens.plist",
  ]
end
