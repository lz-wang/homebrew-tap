class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.5.0/itb_0.5.0_macos_arm64.tar.gz"
      sha256 "cf96b73a25930a90b17b6ee8072dfebc876cdf87dd4d5f2996672d41d33ae984"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.5.0/itb_0.5.0_macos_amd64.tar.gz"
      sha256 "2dec514081ec5876cd66e143d4f136aea259182410afe2df06a73257a63bddc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.5.0/itb_0.5.0_linux_arm64.tar.gz"
      sha256 "b2f0392358ce40c5f17483ffd76f4d56cd0578cfed34c84b4cf282486bfe41ab"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.5.0/itb_0.5.0_linux_amd64.tar.gz"
      sha256 "2eadc994ff033debb4df43998072fc5a003526f60a37c2d7605c169566e4550f"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.5.0", shell_output("#{bin}/itb version")
  end
end
