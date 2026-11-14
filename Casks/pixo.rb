cask "pixo" do
  version "0.1.12"
  sha256 "0b5fbb0a81dac7570b2824f9f40bac38c234e6bcfbaf9e50493cd58993fafa14"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
