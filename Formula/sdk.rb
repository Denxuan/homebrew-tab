class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.1/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "3ee5a3d2b1a787ac515abeca34cc2ee841b6b416c924e3389b6c25d79a9d805c"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.1/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "325480d3afedd2135c8441d95d718d0953cb601b4a65547a4db27d263ab7c745"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.1/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "75c503b28c3131d3da7109ba4e1399f27532a6db67770ce48b75ed4f6186d404"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.1/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "1d8fca7f4a8fd1369f933cec28029696b96d657c8ae456ca29573fc1d5882e4a"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
