class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.3/itb_0.9.3_macos_arm64.tar.gz"
      sha256 "7a425e1f6895f50c5a746a249cbcba1daa408efcfaa30c4f40cd8fc5370f0150"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.3/itb_0.9.3_macos_amd64.tar.gz"
      sha256 "8447cd01684b770e102a87611d4d15dc4349f8a4a30e9b93a454db12579509f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.3/itb_0.9.3_linux_arm64.tar.gz"
      sha256 "911dd6ffe82158957454cae2018de1bb0d81a9b28d388af7ace5789ba3d3aa35"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.3/itb_0.9.3_linux_amd64.tar.gz"
      sha256 "5be253dc1fcf102b16fb90f6dcec9c6dce9c37c99bd372191e040341ccaf0678"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.9.3", shell_output("#{bin}/itb version")
  end
end
