cask "outrig" do
  version "0.5.12"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.12/Outrig-darwin-amd64-v0.5.12.dmg"
    sha256 "286715d125cb7b2f12d948ac337f12a97380dd2c987c2286f40e15f02e2dc7b2"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.12/Outrig-darwin-arm64-v0.5.12.dmg"
    sha256 "6c8e8910184ae786d2d311b3d791ee6c700825f03e00651f9d6ab08b909bbc37"
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
