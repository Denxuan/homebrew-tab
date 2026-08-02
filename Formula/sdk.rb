class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.1/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "9872998e2a179b9b130233534dee61bf0c4bbd22f2b0be680d4f0045f30bdf80"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.1/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "60a92ac4e4ddb1a2ee51203d0e81b576f918a593f15e25b7c719a3869f3e4e1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.1/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "2ffa743dc457add58c9f1df9393ac2d1b47ca639df596074bf6054f0bea6d679"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.1/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "509626d8e178efa1f8edea5d0a8ed362f8120041017598e3ac39c6b7c39a4166"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
