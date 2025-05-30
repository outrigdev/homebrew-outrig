cask "outrig" do
  version "0.6.3"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.6.3/Outrig-darwin-amd64-v0.6.3.dmg"
    sha256 "059ed0359953a1c512acc2cef84f39b7720ff5687a2c2146a676db16de540389"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.6.3/Outrig-darwin-arm64-v0.6.3.dmg"
    sha256 "0ef7eeb751f146206c8d6b30a2d26b12f1a4d6baa62c6f6496c828f2b0f338e8"
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
