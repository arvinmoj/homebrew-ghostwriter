cask "ghostwriter" do
  version "0.6.0"
  name "GhostWriter"
  desc "Universal AI Text Refiner - System-wide text transformation anywhere on your computer"
  homepage "https://github.com/arvinmoj/GhostWriter"

  on_arm do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_aarch64.dmg"
    sha256 "0a9a45ed4cd2ddde73a7ce2d5d5f33465884fee7e9ceff05d725439b39292f1f"
  end
  on_intel do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_x64.dmg"
    sha256 "9fc8ece0695e0b415050f4fe6b0472a49dab80db483eafe8be9841eab52f05e1"
  end

  app "GhostWriter.app"

  zap trash: [
    "~/.config/ghostwriter",
    "~/Library/Application Support/com.ghostwriter.desktop",
    "~/Library/Saved Application State/com.ghostwriter.desktop.savedState",
  ]
end
