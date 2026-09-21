cask "calendarupcoming" do
  version "2.1.10"
  sha256 "73db8a6cad592808947c78b47582a19ee0fa7eb0481b162ac33ba0ce2b30fccb"

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
