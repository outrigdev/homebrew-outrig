cask "outrig" do
  version "0.5.16"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.16/Outrig-darwin-amd64-v0.5.16.dmg"
    sha256 "934e3bf8308ed51a2b237dbd502b338c1c11410d53ebad74ce568b77003bce42"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.16/Outrig-darwin-arm64-v0.5.16.dmg"
    sha256 "3d8ee8637ab1228188076ce5783dbba3bac02e7a5f8aa2f3a25369171e9f1e00"
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
