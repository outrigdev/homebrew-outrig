cask "outrig" do
  version "0.7.1"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.1/Outrig-darwin-amd64-v0.7.1.dmg"
    sha256 "df870ed509d7f110764133c8bbcc3dab7faf96cba441102593d5be5caea1daac"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.7.1/Outrig-darwin-arm64-v0.7.1.dmg"
    sha256 "e75a9d44d6ee2ce503678dd20cf449b22f8d88ddb0dd24ee6b091d82954242e9"
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
