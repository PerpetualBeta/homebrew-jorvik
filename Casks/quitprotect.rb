cask "quitprotect" do
  version "2.2.1"
  sha256 "b5141596ed4755ee09cbdbe174b391f37b0759af1b028685034778a3a44faaeb"

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
