class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.4.0/itb-v0.4.0-macos-arm64.tar.gz"
      sha256 "e1de26d3d1091457aa62c4f2aa75332f6003ecb35084b20e2e36403c6b56a903"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.4.0/itb-v0.4.0-macos-amd64.tar.gz"
      sha256 "e8c41a1329f663affbf08f989d4338882d4cfb2b42d85602f6131a0916de66f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.4.0/itb-v0.4.0-linux-arm64.tar.gz"
      sha256 "bb6f70b21e10bc092c89e35f5f2cd0fe1a6139ff89ab2344cd93dd6b6a9a0c3a"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.4.0/itb-v0.4.0-linux-amd64.tar.gz"
      sha256 "353edc1b022cf7a37ec1eb7d7c6597a561d50dcb91d1347bf21b336e9d516858"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/itb version")
  end
end
