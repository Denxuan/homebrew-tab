class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.0/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "38eefdcc658ea85050519d30841a9574b65c3a3bd17af5815bb6b1fe49cb6ab6"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.0/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "e2ec3a063eacdae43f3250c39871bc29ab5b6370279d454cc2185c4cda9fd51b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.0/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "f7b3e7ed65eb44b7ec751b8205ce3506ba5798cbe2f72aeb41e0e4413d686821"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.0/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "79950d75ede6a20ce38f69ae78c9814e8c123ee7bd89b0d93ed4cd0509fc5c59"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
