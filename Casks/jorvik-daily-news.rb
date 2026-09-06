cask "jorvik-daily-news" do
  version "1.3.0"
  sha256 "9a9e5c0edcc6b0fb1225c0b308e8fba962617156fa63a8dabd460d6acae7e09e"

  url "https://github.com/PerpetualBeta/JorvikDailyNews/releases/download/v#{version}/JorvikDailyNews.zip",
      verified: "github.com/PerpetualBeta/JorvikDailyNews/"
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
