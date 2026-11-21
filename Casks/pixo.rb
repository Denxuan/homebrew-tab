cask "pixo" do
  version "0.1.23"
  sha256 "f656928d5240bbef9a5715a73d722de20ef850bf73607deb63fe9f68f2549c29"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
