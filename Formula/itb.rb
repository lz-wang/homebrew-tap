class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.11.1/itb_0.11.1_macos_arm64.tar.gz"
      sha256 "1199e17812697bdbb7d1ebf78cee618fb0ebf740e93c49421624b8ff564b91ae"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.11.1/itb_0.11.1_macos_amd64.tar.gz"
      sha256 "0f714959153e0ad6ca777cbd2b20dc4a3612378a524882a3d16aea30b7a4aba9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.11.1/itb_0.11.1_linux_arm64.tar.gz"
      sha256 "199c3b75a1ce34293d54ae0afc3de58c9eb45974a80ebe3b80b2a6f2abe95ddf"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.11.1/itb_0.11.1_linux_amd64.tar.gz"
      sha256 "b9366e6995225c046639829c5721b89ddb8ff311638711a497c3a2786c67cdfe"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.11.1", shell_output("#{bin}/itb version")
  end
end
