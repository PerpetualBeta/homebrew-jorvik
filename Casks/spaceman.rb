cask "spaceman" do
  version "2.0.11"
  sha256 "9f7b5b7026a4e9987c58181232735da2cd67e97c2472cdddb9b453f0f97c028a"

  url "https://github.com/PerpetualBeta/SpaceMan/releases/download/v#{version}/SpaceMan.zip",
      verified: "github.com/PerpetualBeta/SpaceMan/"
  name "SpaceMan"
  desc "Capture and restore named window layouts per Mission Control space"
  homepage "https://jorviksoftware.cc/utilities/spaceman"

  livecheck do
    url :url
    strategy :github_latest
  end

  deprecate! date: "2026-09-02", because: "is retired and no longer maintained; use RememberMyWindows instead"

  auto_updates true
  depends_on macos: :sonoma

  app "SpaceMan.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.SpaceMan",
    "~/Library/HTTPStorages/cc.jorviksoftware.SpaceMan",
    "~/Library/Preferences/cc.jorviksoftware.SpaceMan.plist",
  ]
end
