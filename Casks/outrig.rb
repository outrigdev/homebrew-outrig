cask "outrig" do
  version "0.8.1"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.1/Outrig-darwin-amd64-v0.8.1.dmg"
    sha256 "eb6382b6cf408b717a096ee0ac54ee29a89b130ceeef781074a8d1f917ae7a90"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.1/Outrig-darwin-arm64-v0.8.1.dmg"
    sha256 "518fd609189272f39d39b6409c86070168dcbe1c11c5408ba2a50002a6f002c9"
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
