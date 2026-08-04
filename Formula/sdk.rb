class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.4"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.4/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "86c09652d27e112891d193d5c19440b90bf8d6fa05933cd6fb7df9c959b89142"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.4/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "584570266026353ea11fb46d9ac3e0535ebef7e144250c0f2b125e4872d4dfd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.4/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "bc3ed30a266b55171b1915ad87353a7db5cd954762220676fbcdca4c54048fd1"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.4/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "5334c3a00b5c9d9fc015ec05eac84865b7d88321fd969c5530226fc3160a6ef8"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
