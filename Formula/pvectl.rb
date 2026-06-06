class Pvectl < Formula
  desc "Personal HomeLab Proxmox VE CLI"
  homepage "https://github.com/lz-wang/pvectl"
  license "MIT"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pvectl/releases/download/v1.0.0/pvectl-v1.0.0-darwin-arm64"
      sha256 "4bdd83eb0208a6998e2aa134d052e6d2a233af74c0cf263dc1098a16c1651caf"
    else
      url "https://github.com/lz-wang/pvectl/releases/download/v1.0.0/pvectl-v1.0.0-darwin-amd64"
      sha256 "c3902a3f828ad9b18e63dff59a033bb8ea1320af338ad8a32b25de47e3467ba3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pvectl/releases/download/v1.0.0/pvectl-v1.0.0-linux-arm64"
      sha256 "3cc220e31d64e1eafdaef3b37927fed38c882dc7c0e92b764d454815eb57c663"
    else
      url "https://github.com/lz-wang/pvectl/releases/download/v1.0.0/pvectl-v1.0.0-linux-amd64"
      sha256 "35ece723b8f7098aa7b3f74fddf73ad024e0ca70a10cdd37acfac5eb11b94b46"
    end
  end

  def install
    binary = Dir["pvectl-*"].first
    chmod 0755, binary
    bin.install binary => "pvectl"
  end

  test do
    assert_match "v1.0.0", shell_output("#{bin}/pvectl version -o json")
  end
end
