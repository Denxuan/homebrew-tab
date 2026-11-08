cask "pixo" do
  version "0.1.3"
  sha256 "9c8292e44a2bcdea7cbb951b85e56fd90d57f988bda34e71b9df36af54821c89"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
