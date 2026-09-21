cask "copylens" do
  version "1.1.5"
  sha256 "2fe75e2e5257962914202c170530767069af0d17775a1a3c1c2aee017c39e2ff"

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
