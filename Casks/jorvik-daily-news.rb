cask "jorvik-daily-news" do
  version "1.9.0"
  sha256 "ac76a433906b3745a65610718bd4440b864faec62a1a58c8676b40a6af8c2487"

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
