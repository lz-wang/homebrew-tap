class Pve < Formula
  desc "Personal HomeLab Proxmox VE CLI"
  homepage "https://github.com/lz-wang/pve-cli"
  license "MIT"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pve-cli/releases/download/v2.0.1/pve-v2.0.1-darwin-arm64"
      sha256 "f7673baf1ddb3e19a1cab44bfc1a5f69f14ba4b5aa86baf4988198c490062644"
    else
      url "https://github.com/lz-wang/pve-cli/releases/download/v2.0.1/pve-v2.0.1-darwin-amd64"
      sha256 "255e22f3ee727c82d46590967c7ab6b5142bafa6582136c334ccf6566a182559"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pve-cli/releases/download/v2.0.1/pve-v2.0.1-linux-arm64"
      sha256 "982291443c827eeaf7113ad8b526c944c434aa4f7c4abb42d9a32260b81c20de"
    else
      url "https://github.com/lz-wang/pve-cli/releases/download/v2.0.1/pve-v2.0.1-linux-amd64"
      sha256 "d3b46fd67c7a3622ac52e6bd45d4ebcc7da9e6d2cee36e35dc5361e3ba5c2d4d"
    end
  end

  def install
    binary = Dir["pve-*"].first
    chmod 0755, binary
    bin.install binary => "pve"
  end

  test do
    assert_match "v2.0.1", shell_output("#{bin}/pve version -o json")
  end
end
