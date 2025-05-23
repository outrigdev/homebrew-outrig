cask "outrig" do
  version "0.5.13"
  
  on_intel do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.13/Outrig-darwin-amd64-v0.5.13.dmg"
    sha256 "ad597badba383c36c92267bf6654f987bc5682c2d0fded3575b2a6df417a13a0"
  end
  
  on_arm do
    url "https://github.com/outrigdev/outrig/releases/download/v0.5.13/Outrig-darwin-arm64-v0.5.13.dmg"
    sha256 "3760dba077851189d632689bb0088f301ddb8bc010fca1546597c2bc4fcdab31"
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
