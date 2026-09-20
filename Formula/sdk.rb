class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.6/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "406c4a8acec0215719665ac1b143f294f275e715403bd81baba83aece4148ddc"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.6/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "22f9c85b9f73f1e9ba514fe291dd6ca2e93761f6838071ac3b004dbe538b8c22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.6/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "52bfe5f6563355a6eaa7dbfbd2d74832286cd90b066fbd84af5759e54eeada38"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.6/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "a1293f81f39a9202fb1f60ed0d905fe1acbdcbb8b7d0b5bdc20000128a9f8725"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
