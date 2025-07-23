cask "outrig" do
  version "0.9.0-alpha.0"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.0-alpha.0/Outrig-darwin-amd64-v0.9.0-alpha.0.dmg"
    sha256 "d48c3aec8be2b29afd63a9c1a896ecda6d150a57a1ab8bd30bb93a499bb015f2"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.0-alpha.0/Outrig-darwin-arm64-v0.9.0-alpha.0.dmg"
    sha256 "7c062c64ebe7bc067f5c93a71300c34da0ba28264ec234fb785bd751826adc61"
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
