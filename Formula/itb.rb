class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.10.1/itb_0.10.1_macos_arm64.tar.gz"
      sha256 "2af14defc201208ffc21b115398b0ef2278823b1c570a21367e586ed4ac65642"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.10.1/itb_0.10.1_macos_amd64.tar.gz"
      sha256 "4805bcd1b9c608b5ecb7eae9111e16bc81ccede5c364297a9b65da27157cd944"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.10.1/itb_0.10.1_linux_arm64.tar.gz"
      sha256 "d344b91b741d1959f77d1ea947b1bf7742ca80dc6d2cd0aff8394f1d720d5f89"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.10.1/itb_0.10.1_linux_amd64.tar.gz"
      sha256 "638af2c5daa2b01c6b70fa319966b4ecd82aa01408229df76c10b50f73afe757"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.10.1", shell_output("#{bin}/itb version")
  end
end
