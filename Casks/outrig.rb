cask "outrig" do
  version "0.7.0"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.0/Outrig-darwin-amd64-v0.7.0.dmg"
    sha256 "a8716f48a500b6fc432459d6a9cbebdc0e4137ce7de008c3b54e9e209bfb8f37"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.0/Outrig-darwin-arm64-v0.7.0.dmg"
    sha256 "def4c477273c48bf472a066f9b2e89f39c48c12db9076a6844dc1b07d4888518"
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
