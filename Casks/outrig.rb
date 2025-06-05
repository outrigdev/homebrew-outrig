cask "outrig" do
  version "0.7.2"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.2/Outrig-darwin-amd64-v0.7.2.dmg"
    sha256 "483236e097e0d17704e2723e85e80e5760560ac93f3aff4a9b6d215c14e715c0"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.2/Outrig-darwin-arm64-v0.7.2.dmg"
    sha256 "c2a115b789cff93eb3111b354d6cd59ed559e05d1098dd9757af7a131cf5ab6a"
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
