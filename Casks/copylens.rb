cask "copylens" do
  version "1.1.9"
  sha256 "b4992151f72e97694c47554402c8d06ea3308978cf2afd40d53714e0cfefa790"

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
