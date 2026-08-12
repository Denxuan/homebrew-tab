class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.6"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.6/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "95abcb4b84eda1370e0107ac1f748d7b1b4690f04d84587b8c4498ff71938618"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.6/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "febdad03732143a55b1824f125c079b77e5d2becad1e56d370d3d2e14a76418d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.6/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "ba46b8f47ff308468c894eab9d7ea51e1a06b36c3cfb610324d14f5cf979ba04"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.6/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "338d93a48c15eb3ff9731f6bb422d4e0598b114acba99c32f49fe91796f1df2c"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
