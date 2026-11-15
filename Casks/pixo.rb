cask "pixo" do
  version "0.1.18"
  sha256 "2ab6c6ba8db0df494e3db87f068f5cf83b7b703f07ee20899afb865b3eb2262c"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
