cask "calendarupcoming" do
  version "2.1.11"
  sha256 "342709aa43c83f3ac08be02ab6a710768f34e449c175c3ed7d34b30f1dac94de"

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
