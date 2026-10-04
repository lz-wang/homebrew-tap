class Pvectl < Formula
  desc "Personal HomeLab Proxmox VE CLI"
  homepage "https://github.com/lz-wang/pvectl"
  license "MIT"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pvectl/releases/download/v1.1.0/pvectl-v1.1.0-darwin-arm64"
      sha256 "f7567b245c1fc77352e36c1aba6289149f617d0e7ead10bf50b872f8cbcb0482"
    else
      url "https://github.com/lz-wang/pvectl/releases/download/v1.1.0/pvectl-v1.1.0-darwin-amd64"
      sha256 "61746be1ece54779820e2de8263017ab319d1cdfbd121af1576bcf2c8a2d7653"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pvectl/releases/download/v1.1.0/pvectl-v1.1.0-linux-arm64"
      sha256 "547956fa4fcf3d99554082b69095466296b8a2bfce67c617017da6906bca9e3d"
    else
      url "https://github.com/lz-wang/pvectl/releases/download/v1.1.0/pvectl-v1.1.0-linux-amd64"
      sha256 "f1c6520c517dd6d0fb0916372b79d174fed0002f9981a48290e9c97770f1fa04"
    end
  end

  def install
    binary = Dir["pvectl-*"].first
    chmod 0755, binary
    bin.install binary => "pvectl"
  end

  test do
    assert_match "v1.1.0", shell_output("#{bin}/pvectl version -o json")
  end
end
