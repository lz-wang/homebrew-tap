class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.2/itb_0.9.2_macos_arm64.tar.gz"
      sha256 "845fac359e0adccfd51eb3ce0b8c0436902d6feeb53979a45c30c6630ea3c3af"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.2/itb_0.9.2_macos_amd64.tar.gz"
      sha256 "2b8799c61727736fd281724981669bfc214d9bae2ca729f7912612e42b57f818"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.2/itb_0.9.2_linux_arm64.tar.gz"
      sha256 "cb4dd3b9f23d4cace1d0651db67e2cbc20768f1c6d69ae731b854741da10c364"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.9.2/itb_0.9.2_linux_amd64.tar.gz"
      sha256 "f919c2105def2de4ec18e6c34447c54d6bbf613ddb80f3cb3c04ae032e4d178e"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.9.2", shell_output("#{bin}/itb version")
  end
end
