cask "quitprotect" do
  version "2.2.11"
  sha256 "5a15dd318a09acb347b6283c885bdd30606ec38430f4af4911d0a02fa5bb824b"

  url "https://github.com/PerpetualBeta/QuitProtect/releases/download/v#{version}/QuitProtect.zip"
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
