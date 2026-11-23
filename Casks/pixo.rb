cask "pixo" do
  version "0.1.28"
  sha256 "8ce3cc70bd1732c2379f55c90e85cbf8af1bfe9afbe0eafd4391039ce836c23a"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
