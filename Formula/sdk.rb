class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.2/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "781e31421faf991b83a652e06e714975fedeba505f165c8ecc4b3c026ce3efe8"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.2/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "384cdbf8865381f693a03de11e9d89b355e35de02699fefdc2dd032e35a97ae2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.2/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "c6dfe916e89a5439b2c5f0f0844cca9e57fc8e14d2ff4f26d0e8c05fb1533ae5"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.2/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "877828b2a47f1b6800e32f616e37fe31b2ab8751d4572ce2b50a340df2c45e4d"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
