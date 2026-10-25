class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.9/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "ca2f3f5c0fdd33ea464c6aab36f1f46c4fcc112dbf5abcc9336b00448268a3ff"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.9/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "d81c5a0eb2cccf517a0039d362ebfdb4bf8f5fa4dc27e219fe0538f82b9fad61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.9/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "fec2f51c00083567e8c765d12acca3d97e8f49b5fb3bb47666302f1fb2ea1520"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.9/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "be5bde2625d31ddb54b46de14f46bfd3fe61dcf0093422d761c346b1402a7984"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
