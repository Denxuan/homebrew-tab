class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.1/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "6e4862f6549e4c50b1873e58c870cafa1caf6b47c7c014961db1c75a41c99a11"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.1/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "93caadc7bffc6576bb9a5382f2c66dab17fe62817ee65c91e16bb54434445e80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.1/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "1ccf7ad8cc69b64aa66a294588be2b20140a5324eb4f0526ed4a025464f38f2d"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.1/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "c283c41fcb3d92afe2691db4024cb63ee0fca3c104c66bd3fddd02e3866fc911"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
