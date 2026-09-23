cask "quitprotect" do
  version "2.2.12"
  sha256 "d15b6ab564a55c83a5750f09b828ef558dcbc51e402effa9462f2ff8b0ed7904"

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
