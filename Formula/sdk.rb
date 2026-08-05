class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.5"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.5/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "53eb345fac74d5530cfd55ab7d3985d7ba776e2509fc30dc332a4c06bafcdd81"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.5/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "ac3348c8f92ef9d07d8f95788d521aaaafb4f9fba01fa1617f6c177eaff946fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.5/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "944ba8e044035be9a9d31564ed12de12a23a442646a5a5fbc1e5cf4a26e69bc6"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.5/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "346cba1fc67ad7e4e9f91d91b4dc28ad7bffe76e635fa182b6d2e4b9260fbeeb"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
