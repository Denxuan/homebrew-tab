class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.9"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.9/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "8f7b8c33592d433d2773747da3462153832e33c5513a94058d9970ffb15465a6"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.9/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "1921ccf66bc24e102b3023ad8456ed0665cd727a1282b3c7746c0a557e568f2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.9/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "7d7a1576da9ab9df92613df0b0feeac029a1876dedc3e1b1f0d2885da4b56357"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.9/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "1fcfb0e80fb5aac783fb0339fadc3f885bf1801109d32d621538bc7d19511221"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
