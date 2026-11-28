cask "pixo" do
  version "0.1.30"
  sha256 "c6ddab2342c7d6ad10dec39e3e6173ca1dba75f2271becd50e54e97ccd95901b"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
