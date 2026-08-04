class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.3/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "20c6e4507f50d1cf82b423cd3b2d84718ff568da44a5092cd46d751b2d48f914"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.3/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "6043ab905da6a6edcb866400c93aad56a7f1b0f3c4085134209e16b21006e7f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.3/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "8610340784cd5d3675665cb915975a01372022e504e702813db448f898c17a47"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.3/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "ca5b2cb6faf0f364525b7162ea9d5548234aab31ed46845640fafaf9bdcb5e33"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
