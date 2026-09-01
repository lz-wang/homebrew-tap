class Itb < Formula
  desc "Image processing command-line toolbox"
  homepage "https://github.com/lz-wang/image-tool-box"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.8.0/itb_0.8.0_macos_arm64.tar.gz"
      sha256 "8e48f72b9395462c820e16fc589d599b9a398593cdea0b8ffbceeb2c4d1c4d44"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.8.0/itb_0.8.0_macos_amd64.tar.gz"
      sha256 "90e40fde39220478e7405cd11db9b569da4a377d0735e638d8fab0a2ba11a369"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.8.0/itb_0.8.0_linux_arm64.tar.gz"
      sha256 "540a882a7ae102b5160ba2dde8fb3920a8338a7907b62985a151434ec888ee98"
    end

    on_intel do
      url "https://github.com/lz-wang/image-tool-box/releases/download/v0.8.0/itb_0.8.0_linux_amd64.tar.gz"
      sha256 "68ac98d2ab47a7a1c8c2260b6ba066d5469a944996aab48ee69440507a42687a"
    end
  end

  def install
    bin.install "itb"
  end

  test do
    assert_match "itb version v0.8.0", shell_output("#{bin}/itb version")
  end
end
