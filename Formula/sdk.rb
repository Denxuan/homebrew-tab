class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.2/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "148ed4d40ba09f2db9f33c6c45ef7a3e59be95dbb48b1b68a66d508235234c43"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.2/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "905e7032c56bc6222f377e9344f677f1ad7c9ebe2399bda20d56ed85e783efa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.2/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "0a21c6b62c0e74f2216011936a77cc053498f6ad86cf02bbfe21c505b56a62b1"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.2.2/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "438217fdbaf78ed5ebdfe59c835645597dbd8a84e7ff826ceb66cd8ff44d5d7d"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
