cask "pixo" do
  version "0.1.24"
  sha256 "bf078a7c74a4f11705ad8891fc5ecdc394ca17340b1af9f2525f83fdf9e15ece"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
