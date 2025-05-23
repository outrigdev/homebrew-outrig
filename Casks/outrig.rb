cask "outrig" do
  version "0.5.15"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.15/Outrig-darwin-amd64-v0.5.15.dmg"
    sha256 "07b198502d9f74e8bf0652e794c8e71e787cfd5a9062b8c0a4ca6b3fd224195f"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.15/Outrig-darwin-arm64-v0.5.15.dmg"
    sha256 "d354e0201d9cc59a9d084f6c2d695c4a05e3c0ac81ef004e6dab4b65882e7235"
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
