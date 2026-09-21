cask "quitprotect" do
  version "2.2.10"
  sha256 "51271b52cc60039ed3f27bfb52e8739d664aa0b56453f8de08ab4479e775e842"

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
