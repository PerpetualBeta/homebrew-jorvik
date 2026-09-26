cask "calendarupcoming" do
  version "2.1.12"
  sha256 "25627c82d43bee952c7db0a1fdceb88d5c4f2fd8179f859a3e663d0e24535467"

  url "https://github.com/PerpetualBeta/CalendarUpcoming/releases/download/v#{version}/CalendarUpcoming.zip"
  name "CalendarUpcoming"
  desc "Menu-bar app that alerts you to upcoming calendar events"
  homepage "https://jorviksoftware.cc/utilities/calendarupcoming"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "CalendarUpcoming.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.CalendarUpcoming",
    "~/Library/HTTPStorages/cc.jorviksoftware.CalendarUpcoming",
    "~/Library/Preferences/cc.jorviksoftware.CalendarUpcoming.plist",
  ]
end
