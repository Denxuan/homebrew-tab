class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.7/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "387e7561d4b403cb484925e5e90e3c2236151ad5a7b61755d8d2121a252beb8f"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.7/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "40d94d5053d3ae352d95e1128a878fc8e9acb3d2c5a25fcfd02e1064bec47d46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.7/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "907159e27d4b62a42f2b897d0d0a5451856e340d182319f063daf09e5045a0ae"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.7/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "4733c10be91d028b554063311b77ab2b5b0eb617752926cf511ac12863570edc"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
