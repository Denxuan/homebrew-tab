cask "pixo" do
  version "0.1.26"
  sha256 "747c4e9fe9f15b1e8b12f531df693b587c8e086f6a8d6705060811b85f96c606"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
