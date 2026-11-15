cask "pixo" do
  version "0.1.19"
  sha256 "8cef906d99c5b59c07e6dfa894b993d2f24dbe6b837a91834a5dd97efbc24ea1"

  url "https://github.com/Denxuan/Pixo/releases/download/v#{version}/pixo-macos-universal.dmg"
  name "Pixo"
  desc "Desktop clipboard and productivity toolbox"
  homepage "https://github.com/Denxuan/Pixo"

  app "pixo.app"
end
