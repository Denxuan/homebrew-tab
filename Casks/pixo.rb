cask "pixo" do
  version "0.1.32"
  sha256 "ecb3e70bb6e96a4ed2d75cf2251bcef2a997ee19ceff724755c67a37e106d5af"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
