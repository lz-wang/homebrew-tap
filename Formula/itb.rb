class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.0/itb_0.9.0_macos_arm64.tar.gz"
      sha256 "9d81882efd437647921f228b0b2f53068653615acee8cf2ea3dae33b8bf56bed"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.0/itb_0.9.0_macos_amd64.tar.gz"
      sha256 "afa9bbe9614dc554973778e02e401c0d35cb079fcdf28bae4e5e9bce6df618d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.0/itb_0.9.0_linux_arm64.tar.gz"
      sha256 "c6250e71cccfa1fc70cf2168b47d3b54b535f0abc1c719e4fdb03b2dbf7ad4d4"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.0/itb_0.9.0_linux_amd64.tar.gz"
      sha256 "09172e1e303eef37d559262b77d4cbc7a673af8158bbcdf1c38c4486055a7e58"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.9.0", shell_output("#{bin}/itb version")
  end
end
