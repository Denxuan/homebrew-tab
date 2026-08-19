class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.0/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "79da1cbaa30ce12982d97c3c2b4f8b87b6cad4c810fa1622ad220682e14ed633"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.0/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "e180d4175c9e70492780235c5462d6ee5e72861b3b12e836d2a4ee6272490d33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.0/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "394a62b67c2554ea01c74706518335dff5f247430b476750f91b7292ae540e8a"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.0/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "71d83193973f4307de1f21bf9a782d1e036416efd79c3ee502b290f4cd28f2ba"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
