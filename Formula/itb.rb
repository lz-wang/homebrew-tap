class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.4.1/itb_0.4.1_macos_arm64.tar.gz"
      sha256 "8fa4cfd434ebeb358257616b7b85b58a87bbda4e945a9346146e149c5c345335"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.4.1/itb_0.4.1_macos_amd64.tar.gz"
      sha256 "7e2f69489c7a39405ccdab8511be1fc283d677be1641d02cec7a3c78d6cf7db4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.4.1/itb_0.4.1_linux_arm64.tar.gz"
      sha256 "b677d511fca966b883b07f9cd636d760a48cde57558cf9bc21d209c010f4a9ff"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.4.1/itb_0.4.1_linux_amd64.tar.gz"
      sha256 "73a010016d2ae1501217df9248b12869819655a837dcccd0e1fd530aeeaebcd2"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.4.1", shell_output("#{bin}/itb version")
  end
end
