cask "outrig" do
  version "0.6.2"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.6.2/Outrig-darwin-amd64-v0.6.2.dmg"
    sha256 "deb1292068cc3c4b9a1f8583c512591888e79472ed78fbbc89dbfdb5a508a57a"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.6.2/Outrig-darwin-arm64-v0.6.2.dmg"
    sha256 "73d8e2458d1d2a408a4bf0b129346dca6ba4a3563354bc5c4d99bccf5cebcb55"
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

  zap trash: [
    "~/Library/Application Support/Outrig",
    "~/Library/Caches/Outrig",
    "~/Library/Logs/Outrig",
    "~/Library/Preferences/com.outrig.Outrig.plist",
  ]
end
