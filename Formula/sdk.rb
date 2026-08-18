class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.8"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.8/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "bcff6afb982773225c3200f2db5bea4d10681fd2bbf063514986aa4d2635b790"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.8/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "c6457f4a643cc0b9d19b043f8b298f6a87894cba1cf6af98d886d36996bdf57f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.8/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "b69f54c039667e29c02a6d89e0f437dc3979945ac5a1aeb36b4cb70719c57b23"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.8/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "a13dc245c1b359444f17dea54ea22c765985dff546b882892f5b858a49a5dc24"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
