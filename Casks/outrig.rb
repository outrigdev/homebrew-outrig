cask "outrig" do
  version "0.9.0"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.0/Outrig-darwin-amd64-v0.9.0.dmg"
    sha256 "b2b945b01a6583350b1bc0b543e025caefb7143e6a6cde49df2781c937b506b1"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.0/Outrig-darwin-arm64-v0.9.0.dmg"
    sha256 "242bfe47d9272964388ce748fde6630f538cd4b2098ce6f6e6770cb146ec06f4"
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
