cask "jorvik-daily-news" do
  version "1.6.0"
  sha256 "c1da36b8cfc489e0ea67d306a39bfa5517a6340d226b05d10d111be850e52fc8"

  url "https://github.com/PerpetualBeta/JorvikDailyNews/releases/download/v#{version}/JorvikDailyNews.zip"
  name "Jorvik Daily News"
  desc "RSS reader that publishes a finite, today-only newspaper"
  homepage "https://jorviksoftware.cc/apps/dailynews"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Jorvik Daily News.app"

  zap trash: [
    "~/Library/Caches/cc.jorviksoftware.JorvikDailyNews",
    "~/Library/HTTPStorages/cc.jorviksoftware.JorvikDailyNews",
    "~/Library/Preferences/cc.jorviksoftware.JorvikDailyNews.plist",
  ]
end
