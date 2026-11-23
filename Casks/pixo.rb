cask "pixo" do
  version "0.1.27"
  sha256 "f1c9461b8ba9cb2310044eeb8f09276fd8fce91111ec7b6f1a558a80c7cf2a66"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
