cask "outrig" do
  version "0.8.0-beta.1"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.0-beta.1/Outrig-darwin-amd64-v0.8.0-beta.1.dmg"
    sha256 "5fc1a1aaad8448a0f4b70464804dbc1959a376143ea91948cdd9cb0389f3c90b"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.0-beta.1/Outrig-darwin-arm64-v0.8.0-beta.1.dmg"
    sha256 "390b91c4a21fd5be3e1c08a6471916b856a51d3ee603519a029dce8739c9ecb3"
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
