cask "outrig" do
  version "0.8.2"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.2/Outrig-darwin-amd64-v0.8.2.dmg"
    sha256 "e5ddb98ec0cf1eb07e9536ca1c191b0c641f49fa761874381f40f1cde007a3b2"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.2/Outrig-darwin-arm64-v0.8.2.dmg"
    sha256 "da60bec151b8afa8cbf914e2d89918b00ccb34194d9772f31645c2b7c9c1bf20"
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
