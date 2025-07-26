cask "outrig" do
  version "0.9.0-beta.0"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.0-beta.0/Outrig-darwin-amd64-v0.9.0-beta.0.dmg"
    sha256 "ae1fa9b455ed49c6c85bc4811a7221e89e89cf1939ee5070c21dad4afe1231d3"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.9.0-beta.0/Outrig-darwin-arm64-v0.9.0-beta.0.dmg"
    sha256 "5ba6ac7f47feaa83d5e1dff73c77b42def04299d0ca8a3984b91548a514c803a"
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
