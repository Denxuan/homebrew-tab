cask "pixo" do
  version "0.1.5"
  sha256 "92119853d1901270e2c11fa5e51e4a51878c53d49aec4e6b5f238cc04ce50194"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
