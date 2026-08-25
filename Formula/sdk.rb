class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.3/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "4c3ce3e0e5a4b2c701fe4e0ff364f9332e0ff8497e0b18d63737b038c5fd7019"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.3/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "4d32349fe3fbb8aabfa7566c5a8f9ecbdbd2d9625d088ad6d3ee753927da8a4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.3/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "d76978870f92a1a4b72e9e600ffb75f2cc081c3e92dcd56970b91879632cd89a"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.3/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "fbace9017672442de4223251663f2335f44efbb0b7d12782afb1fe5ed07423e2"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
