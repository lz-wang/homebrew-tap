class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.11.0/itb_0.11.0_macos_arm64.tar.gz"
      sha256 "105257afd479d1371d97cc724eeeb18cd1f6589f32846a6276877bc9116933d0"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.11.0/itb_0.11.0_macos_amd64.tar.gz"
      sha256 "ce80cd072a0aeeb1e790a4d11a5555a251630d46d8a13099bf9c485765105b4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.11.0/itb_0.11.0_linux_arm64.tar.gz"
      sha256 "be90e444fa24a381068f4b6bfcc8e63adc78ae9681a298a8c469917e329b6a93"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.11.0/itb_0.11.0_linux_amd64.tar.gz"
      sha256 "ef67b0d9928a91d08bd200a987660fd821e6289da2429ad6a91a11c50cccc5f8"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.11.0", shell_output("#{bin}/itb version")
  end
end
