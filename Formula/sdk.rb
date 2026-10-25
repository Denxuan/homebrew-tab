class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.1/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "673135337fe1178db7af17261653eea91bac59ef319ffef7c47b36bbbc135a09"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.1/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "61fa47846528fcc7783566b8324a839eab008dba373e00771198842dfa8f6eb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.1/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "9c397c6166c23b599e21c1642c53bee91feab4e1ab798fa2d3ecdd724adcb437"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.1/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "d7710c81b9f57f9936bd23793c0a65ad06c0b0c4a1114e4721bcbe63c0c92f9e"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
