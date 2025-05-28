cask "outrig" do
  version "0.6.1"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.6.1/Outrig-darwin-amd64-v0.6.1.dmg"
    sha256 "87940c141ffc76812ebb12b32880e4a8bde061bba168c146b17e0984bd11db13"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.6.1/Outrig-darwin-arm64-v0.6.1.dmg"
    sha256 "d63cc63ea6436a82a548dff8990a521cae09e4ae2a4de3f4ad0ddfe4825648d3"
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
