cask "jorvik-daily-news" do
  version "1.4.2"
  sha256 "1bee507f2de563bfd1882ab5db861cb934a1a3d0c9ba4cd1a838e1389699b95f"

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
