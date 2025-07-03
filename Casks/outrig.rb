cask "outrig" do
  version "0.8.3"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.3/Outrig-darwin-amd64-v0.8.3.dmg"
    sha256 "6d33a5e98715dd3b780a945e9521d874711c4c9d5a6844412207afe77a159c98"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.3/Outrig-darwin-arm64-v0.8.3.dmg"
    sha256 "650913604a04036c9a5b1fd49820a43ba49b55730e789cf177e8c1b850c90187"
  end

  name "Outrig"
  desc "Real-time debugging for Go programs, similar to Chrome DevTools"
  homepage "https://github.com/outrigdev/outrig"

  auto_updates true

  livecheck do
    url "https://github.com/outrigdev/outrig/releases/latest"
    strategy :github_latest
  end

  app "Outrig.app"
  binary "#{appdir}/Outrig.app/Contents/MacOS/outrig"

  zap trash: [
    "~/Library/Application Support/Outrig",
    "~/Library/Caches/Outrig",
    "~/Library/Logs/Outrig",
    "~/Library/Preferences/com.outrig.Outrig.plist",
  ]
end
