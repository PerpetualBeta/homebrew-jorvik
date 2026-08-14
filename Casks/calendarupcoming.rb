cask "calendarupcoming" do
  version "2.1.3"
  sha256 "2c0e0e47f02abd5c170c6b9f28fe69363948a559c84168d5d6cae3d0a3fa37bf"

  url "https://github.com/PerpetualBeta/CalendarUpcoming/releases/download/v#{version}/CalendarUpcoming.zip",
      verified: "github.com/PerpetualBeta/CalendarUpcoming/"
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
