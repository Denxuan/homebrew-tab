class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.8/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "b6685c7db70a8ece3378e7379057530baa73dc3b7af72619d16eede742ddbc4d"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.8/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "43c70d43c324d257e6df6be7932c6a4299a680f17005c4adcd9d1ac3513ecd7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.8/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "81c10853053621cfbf728f04f4d6c2d18133f16b094f49a5dfe5271d1ea2a86c"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.8/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "d146afddfd9f1193ef965f8a2546390fea38da14f98ec2da1ef2204925a156da"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
