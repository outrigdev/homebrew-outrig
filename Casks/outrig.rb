cask "outrig" do
  version "0.8.0"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.0/Outrig-darwin-amd64-v0.8.0.dmg"
    sha256 "8682888eb8ed8d4abda15e8ce66e508d0b2eaccedb090eba4d39f94ba917fb42"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.8.0/Outrig-darwin-arm64-v0.8.0.dmg"
    sha256 "fc8ad372fa22640ef3da28f6ffc43fa2f4640500f1b866f8a6ca5e1d09b6fb20"
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
