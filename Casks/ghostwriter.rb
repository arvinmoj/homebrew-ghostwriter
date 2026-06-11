cask "ghostwriter" do
  version "0.12.0"
  name "GhostWriter"
  desc "Universal AI Text Refiner - System-wide text transformation anywhere on your computer"
  homepage "https://github.com/arvinmoj/GhostWriter"

  on_arm do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_aarch64.dmg"
    sha256 "b3700206be41a8d0c20306c051687ecd58508fb6a58eee0acb7159f25bc48259"
  end
  on_intel do
    url "https://github.com/arvinmoj/GhostWriter/releases/download/v#{version}/GhostWriter_#{version}_x64.dmg"
    sha256 "1fd547567db60450b4c902e6bd6cb2af562b4af1bfd75edbc65a54db5488e8ea"
  end

  app "GhostWriter.app"

  zap trash: [
    "~/.config/ghostwriter",
    "~/Library/Application Support/com.ghostwriter.desktop",
    "~/Library/Saved Application State/com.ghostwriter.desktop.savedState",
  ]
end
