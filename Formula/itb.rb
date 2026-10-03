class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.10.0/itb_0.10.0_macos_arm64.tar.gz"
      sha256 "798261e5d55d46a8e67022d8fed251cf6cc11b51e07e4cac039abc43aac2248f"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.10.0/itb_0.10.0_macos_amd64.tar.gz"
      sha256 "a149bb6857ffcd03a405ad778658abd062efa2fa5a562164003cf426fae6f5c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.10.0/itb_0.10.0_linux_arm64.tar.gz"
      sha256 "ce97414c7879518c43d1f0c6130fe513aaa70ba5aa3181a51aee73cffa01aa01"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.10.0/itb_0.10.0_linux_amd64.tar.gz"
      sha256 "c4bcebead1eb17e4e3aaa5fa90c4473576f13181cfc43e9035b367ab4c27427f"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.10.0", shell_output("#{bin}/itb version")
  end
end
