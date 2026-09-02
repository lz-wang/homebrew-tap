class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.1/itb_0.9.1_macos_arm64.tar.gz"
      sha256 "efe5bf3cd4f1bce69a5c531a4c8b9bcaf032f911722ac03df75509a8b60b77d0"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.1/itb_0.9.1_macos_amd64.tar.gz"
      sha256 "1c6577b6f6c9ab3d7466aa247a2a70eecfd07f68f5240cc78315d83bc9da0a69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.1/itb_0.9.1_linux_arm64.tar.gz"
      sha256 "b74d15209c02d42b0098748468d2097a1b16aca0f38d869279ba10604176f45d"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.1/itb_0.9.1_linux_amd64.tar.gz"
      sha256 "d0d9df591ba276f766a6cc2d0100858e0d1b929f32e38ada58fbc2c3887b9efb"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.9.1", shell_output("#{bin}/itb version")
  end
end
