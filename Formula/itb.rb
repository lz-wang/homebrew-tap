class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.7.0/itb_0.7.0_macos_arm64.tar.gz"
      sha256 "98396f4cc63561c6d1ef7dc5aee3abed95bafc0e94b24a3fdeae0b8794817237"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.7.0/itb_0.7.0_macos_amd64.tar.gz"
      sha256 "519d22deb201591fc5860adce29e95e824973ce4e91e98a1b5cc5bb9538ec769"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.7.0/itb_0.7.0_linux_arm64.tar.gz"
      sha256 "50c70ea10a907c725c60edbab0bfd744cc567d96f4259ff5130c21b0ad2e07f0"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.7.0/itb_0.7.0_linux_amd64.tar.gz"
      sha256 "348ea2d91174274a6c377f3ed7ca1d15c819a4d4cb8b82725f82d5bec1fc0beb"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.7.0", shell_output("#{bin}/itb version")
  end
end
