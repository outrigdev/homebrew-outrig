cask "outrig" do
  version "0.9.1"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.1/Outrig-darwin-amd64-v0.9.1.dmg"
    sha256 "939d022420a8cf850f34beea03aee9b3afd63a538cd681fd73ffdcf9785588b5"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.1/Outrig-darwin-arm64-v0.9.1.dmg"
    sha256 "a4c9580b76f43f8967158864c81d8fc1a9862e7f359969e7627ee5f5b8a1d910"
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
