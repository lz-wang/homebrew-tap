class Pve < Formula
  desc "Personal HomeLab Proxmox VE CLI"
  homepage "https://github.com/lz-wang/pve-cli"
  license "MIT"
  version "3.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pve-cli/releases/download/v3.1.0/pve-v3.1.0-darwin-arm64"
      sha256 "83ce9bb54516c43a30be618194550e224055dc2860f0ccdb0f6d8148fb670d00"
    else
      url "https://github.com/lz-wang/pve-cli/releases/download/v3.1.0/pve-v3.1.0-darwin-amd64"
      sha256 "c94e93e8dfd1a9a698a6ec04f540957606d2061753b96ed865cc7d7f6f76db4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pve-cli/releases/download/v3.1.0/pve-v3.1.0-linux-arm64"
      sha256 "989b971b9ea34899844346eebad03da06ac9353fb008ee0e168882f733ead48b"
    else
      url "https://github.com/lz-wang/pve-cli/releases/download/v3.1.0/pve-v3.1.0-linux-amd64"
      sha256 "c29fc723bd1eb0841458541b28d0db672d2d316d2699f82ffbe6e559f3c83e1a"
    end
  end

  def install
    binary = Dir["pve-*"].first
    chmod 0755, binary
    bin.install binary => "pve"
  end

  test do
    assert_match "v3.1.0", shell_output("#{bin}/pve version -o json")
  end
end
