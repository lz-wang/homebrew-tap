class Pve < Formula
  desc "Personal HomeLab Proxmox VE CLI"
  homepage "https://github.com/lz-wang/pve-cli"
  license "MIT"
  version "3.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pve-cli/releases/download/v3.0.0/pve-v3.0.0-darwin-arm64"
      sha256 "ee76281d9fc33471ac1a3fb2cdd3bb4fe7c56bf8de36fd2bfb5735dc9c55e9cb"
    else
      url "https://github.com/lz-wang/pve-cli/releases/download/v3.0.0/pve-v3.0.0-darwin-amd64"
      sha256 "798be16cc734ccf38d761744059f77b6d30cbdbbd31defcdac4ea32b4b7209f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pve-cli/releases/download/v3.0.0/pve-v3.0.0-linux-arm64"
      sha256 "6ce809460f5367a33ae04cf750c9e44bae0682a692cac7b77d0a8fb08c178778"
    else
      url "https://github.com/lz-wang/pve-cli/releases/download/v3.0.0/pve-v3.0.0-linux-amd64"
      sha256 "3c6f1e8239095a3b3bce37b270ab1b7041721d7ee9f16742e19314e2f44c348c"
    end
  end

  def install
    binary = Dir["pve-*"].first
    chmod 0755, binary
    bin.install binary => "pve"
  end

  test do
    assert_match "v3.0.0", shell_output("#{bin}/pve version -o json")
  end
end
