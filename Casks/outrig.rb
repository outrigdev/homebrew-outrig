cask "outrig" do
  version "0.9.1-beta.0"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.1-beta.0/Outrig-darwin-amd64-v0.9.1-beta.0.dmg"
    sha256 "9d58d15cfe11fed15c0d20bb5e3781de4599cbd7434f6305453fe62321cdb751"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.1-beta.0/Outrig-darwin-arm64-v0.9.1-beta.0.dmg"
    sha256 "a2a26037e17f3ff0c8f9f664fa14a912b346d5888856dc16e410d99948608aa3"
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
