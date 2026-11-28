cask "pixo" do
  version "0.1.31"
  sha256 "acbb88c13c1a3b2978867020bc25286221aba3bca8a96b7b26cdbade9d695d1c"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
