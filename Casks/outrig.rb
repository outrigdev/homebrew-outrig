cask "outrig" do
  version "0.7.4"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.4/Outrig-darwin-amd64-v0.7.4.dmg"
    sha256 "f8ca01028a3dd58d5c65d35cb16b0903fafe58dc8b8cd5bb57b6d95b1b8ad480"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.4/Outrig-darwin-arm64-v0.7.4.dmg"
    sha256 "139879978c789cb08eeda0e8f951c480c6549bd2899de4549f477509de4c4378"
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
