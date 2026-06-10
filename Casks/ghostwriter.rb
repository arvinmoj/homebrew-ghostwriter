cask "ghostwriter" do
  version "0.9.0"
  name "GhostWriter"
  desc "Universal AI Text Refiner - System-wide text transformation anywhere on your computer"
  homepage "https://github.com/arvinmoj/GhostWriter"

  on_arm do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_aarch64.dmg"
    sha256 "76a929ec1618691ae37753d352653aa4adf39a00fe6c7bd419fdb410a684a9e3"
  end
  on_intel do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_x64.dmg"
    sha256 "3122c0e5d091ac914ee135f21abc97a76ce2b745e89cd0efc15e86bcc83745ae"
  end

  app "GhostWriter.app"

  zap trash: [
    "~/.config/ghostwriter",
    "~/Library/Application Support/com.ghostwriter.desktop",
    "~/Library/Saved Application State/com.ghostwriter.desktop.savedState",
  ]
end
