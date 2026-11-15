cask "pixo" do
  version "0.1.17"
  sha256 "2e175b4e60a360a7463873ff327c369bb25cd14dcc529a42c80996dfacb034d0"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
