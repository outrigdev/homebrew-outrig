cask "outrig" do
  version "0.5.17"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.17/Outrig-darwin-amd64-v0.5.17.dmg"
    sha256 "eee2fdd84693de6c12d5914ef3a4f027bfc79d2e885dddd65994f1b2cabc9223"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.17/Outrig-darwin-arm64-v0.5.17.dmg"
    sha256 "09536af0b64626d9a20d2e5612b191765d55c42a2a7a9bdefe3b9e49dcdf781e"
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
