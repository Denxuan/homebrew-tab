class Sdk < Formula
  desc "Development tool version manager for Java, Maven, Go, and Node.js"
  homepage "https://github.com/Denxuan/sdk"
  version "0.0.7"

  on_macos do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.7/sdk_#{version}_darwin_arm64.tar.gz"
      sha256 "f028ff0cd4fa7ad096a44618b33bac1abb8a317a27f67791eb11163dfca7a9be"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.7/sdk_#{version}_darwin_amd64.tar.gz"
      sha256 "23a0ce4e48db9075cefdf36671283300c51dfa9becc76e11392239176f5fe43d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.7/sdk_#{version}_linux_arm64.tar.gz"
      sha256 "94fe1d1c046a49a77bc7c346e9bbbe4cb83aa701706c15427b51ec63ec8c41d0"
    end

    on_intel do
      url "https://github.com/Denxuan/sdk/releases/download/0.0.7/sdk_#{version}_linux_amd64.tar.gz"
      sha256 "14327acb178309a2ea235791caf033151a07e8c1e48475a4ef25f18792148247"
    end
  end

  def install
    bin.install "sdk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdk version")
  end
end
