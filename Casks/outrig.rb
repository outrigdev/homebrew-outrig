cask "outrig" do
  version "0.5.11"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.11/Outrig-darwin-amd64-v0.5.11.dmg"
    sha256 "0a3f09de0539dedda08366a5e18c5168f989ba6b35552f9af69a2e0c692d9986"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.11/Outrig-darwin-arm64-v0.5.11.dmg"
    sha256 "178c9656305f448740f33b0cf0648b09c1ddd83a41977bc764346cafcd1085fe"
  end

  name "Outrig"
  desc "Real-time debugging for Go programs, similar to Chrome DevTools"
  homepage "https://github.com/outrigdev/outrig"

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
