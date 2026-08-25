class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Maven mvnd, Gradle, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.4/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "ac34257efb2a24d7b658fdfb14e8f95eb0a597ade421b241534a4e2db9ff4870"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.4/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "daa01136226eff9357bb6e3c8e492e117eddb7680ee705fd05b0f6b90f68db21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.4/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "b16a46c253ee0093936b3bf652d43be7b9a3ae8a941c8409c41f1d603b26d617"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.1.4/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "ac065e87b19c59a3b38b7ba8133a424ceb752583cf0eef0af08e22d71cf9cc10"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
