cask "quitprotect" do
  version "2.2.0"
  sha256 "248353ebf15b8abf2805b108b98c5fe8dab92b1586ab4f966403cc63b7aca565"

  url "https://github.com/PerpetualBeta/QuitProtect/releases/download/v#{version}/QuitProtect.zip",
      verified: "github.com/PerpetualBeta/QuitProtect/"
  name "QuitProtect"
  desc "Prevent accidental quits with double-press or hold-to-quit"
  homepage "https://jorviksoftware.cc/utilities/quitprotect"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "QuitProtect.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.QuitProtect",
    "~/Library/HTTPStorages/cc.jorviksoftware.QuitProtect",
    "~/Library/Preferences/cc.jorviksoftware.QuitProtect.plist",
  ]
end
