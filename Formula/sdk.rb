class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.5/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "584ba88b93af0b553cfc6ee1aab0cd1d4e8c82a1667cad8e4a41c03cb11fea26"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.5/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "7481432636edc918eb38215399435a8493c926dfc221cf61f997200cbed7da19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.5/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "408bdc6a71ce86354061db7cdd3143494513e6caf6c5eed588a8b7d84ef417b4"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.5/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "39eca3accdd996c9d8de2f635e19fd7120a9b506ef935421a9912a55fce9d45a"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
