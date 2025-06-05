cask "outrig" do
  version "0.7.3"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.3/Outrig-darwin-amd64-v0.7.3.dmg"
    sha256 "952a751b990c2844f911cf9e5fcc8c10ff21e3bf6fe6df3738b8ffd07b25f353"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.3/Outrig-darwin-arm64-v0.7.3.dmg"
    sha256 "a6a5a704dc581cb77fa9c2153011b53d767772f8d03e35ecff1ef2835a72c6f9"
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
