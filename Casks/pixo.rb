cask "pixo" do
  version "0.1.29"
  sha256 "9ef7df96e8c78b8f0920a688f0a225e12ca16eeccc5bb7bdf9db0df096aa955d"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
