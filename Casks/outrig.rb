cask "outrig" do
  version "0.8.1"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.1/Outrig-darwin-amd64-v0.8.1.dmg"
    sha256 "c2e6bbcb584748cb096fec5649bd2519a71219de277353359d91d5fced98bab2"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.1/Outrig-darwin-arm64-v0.8.1.dmg"
    sha256 "5dc325695ff908c7a9a3c4ca3e8996cd29c0c09105fc99cd4c7bd8d2b78added"
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
