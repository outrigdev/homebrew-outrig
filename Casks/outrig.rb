cask "outrig" do
  version "0.6.0"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.6.0/Outrig-darwin-amd64-v0.6.0.dmg"
    sha256 "e9dc227e8ad40271eed1e9463c437e70ed98ccbc2de2dcb728e4835338a621ac"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.6.0/Outrig-darwin-arm64-v0.6.0.dmg"
    sha256 "8610d13c6a43b0410d904ef0165b314ae6e9197d6d186bc4fc1a87da11ab6044"
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
