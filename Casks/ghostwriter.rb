cask "ghostwriter" do
  version "1.0.0"
  name "GhostWriter"
  desc "Universal AI Text Refiner - System-wide text transformation anywhere on your computer"
  homepage "https://github.com/arvinmoj/GhostWriter"

  on_arm do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_aarch64.dmg"
    sha256 "e6eb9f4e36a0da7cc22d03d6d66e7a38a148bf9d48215815c9244d6691b2177b"
  end
  on_intel do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_x64.dmg"
    sha256 "2df0f13168a184142d6b9d4ab67551e1a911e16aaa56c4a1d68501ebb6f16a0a"
  end

  app "GhostWriter.app"

  zap trash: [
    "~/.config/ghostwriter",
    "~/Library/Application Support/com.ghostwriter.desktop",
    "~/Library/Saved Application State/com.ghostwriter.desktop.savedState",
  ]
end
