class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.6.0/itb_0.6.0_macos_arm64.tar.gz"
      sha256 "0b32db2ad2b2f1e9d996d50e4e01b62c3602703d609969a2e4936c815d3df5f8"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.6.0/itb_0.6.0_macos_amd64.tar.gz"
      sha256 "f8b7c95aa782569ffffe98270a265d0c1c4377fd8eec9d7a934ee3d720149269"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.6.0/itb_0.6.0_linux_arm64.tar.gz"
      sha256 "69d457b1ef7a3f6b1ba47e3196ccac6bd86ae92ec0db27b8100f7b9a2bfadde4"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.6.0/itb_0.6.0_linux_amd64.tar.gz"
      sha256 "d0d49795aeda327fd063a4238cf1c9f06be9131ae095bed0d2608ec7e12603e5"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.6.0", shell_output("#{bin}/itb version")
  end
end
