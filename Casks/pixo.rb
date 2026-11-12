cask "pixo" do
  version "0.1.8"
  sha256 "39b7fdcc3bc331d589adadadbae7dba77f82243ebaf8438d50df5dfb2c524913"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
