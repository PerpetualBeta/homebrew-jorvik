cask "copylens" do
  version "1.1.10"
  sha256 "b022249af760da7b6dc0ab7ef270559ef64159e1f36b9beb7bf2965cfc30ad26"

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
