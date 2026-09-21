cask "calendarupcoming" do
  version "2.1.8"
  sha256 "c7b1c080b0bd925ca09a8cd9c166f54e3b8baab63b0e0313ed1de89da2372f33"

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
