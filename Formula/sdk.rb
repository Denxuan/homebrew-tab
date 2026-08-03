class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.2/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "f5daf3b43d2c57527ceeb12d1dff6c8392df25802b9bd682b45aba5272c5854d"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.2/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "b59a9e6eaf389683dd95e645f0186f28fbdb1e141722ba8fafb08d23c2acb4e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.2/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "d1b9d9b7e2347929b38c6673705d785ee069adf2623a190867dcc0c6f6864637"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.2/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "b010ffc40f3f9d5fb2783958f2faa7118d6f9ad9bfe3b31f29cbb3f65d990266"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
