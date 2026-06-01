cask "ghostwriter" do
  version "0.4.0"
  name "GhostWriter"
  desc "Universal AI Text Refiner - System-wide text transformation anywhere on your computer"
  homepage "https://github.com/arvinmoj/GhostWriter"

  on_arm do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_aarch64.dmg"
    sha256 "<placeholder-run-release-first>"
  end
  on_intel do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_x64.dmg"
    sha256 "<placeholder-run-release-first>"
  end

  app "GhostWriter.app"

  zap trash: [
    "~/.config/ghostwriter",
    "~/Library/Application Support/com.ghostwriter.desktop",
    "~/Library/Saved Application State/com.ghostwriter.desktop.savedState",
  ]
end
