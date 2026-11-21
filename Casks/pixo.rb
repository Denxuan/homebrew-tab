cask "pixo" do
  version "0.1.22"
  sha256 "560c22bdc3a10bcade7f7a1489c69b2057756630a155d1cc1379fcd675309820"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
