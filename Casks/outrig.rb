cask "outrig" do
  version "0.5.14"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.14/Outrig-darwin-amd64-v0.5.14.dmg"
    sha256 "ecba0434d813a264bf640b5acfd36bf50a1fcc262261b89df090f66338fd1b4b"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.14/Outrig-darwin-arm64-v0.5.14.dmg"
    sha256 "f38abe1cfe519459b42aa9e443da139047a95a1725db812fc20fbd91376dd293"
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
