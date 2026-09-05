cask "jorvik-daily-news" do
  version "1.2.0"
  sha256 "274ea557de5ce6b89f915dc2ad12898e832cf6e13f14beeca965e9858c61bfbf"

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
