class Pve < Formula
  desc "Personal HomeLab Proxmox VE CLI"
  homepage "https://github.com/lz-wang/pvectl"
  license "MIT"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pvectl/releases/download/v2.0.0/pve-v2.0.0-darwin-arm64"
      sha256 "191b47fbbe4c033b96968586ee242db00a5d42f6b7dd7c08a05595224f3f6227"
    else
      url "https://github.com/lz-wang/pvectl/releases/download/v2.0.0/pve-v2.0.0-darwin-amd64"
      sha256 "c60e3f9a994d08ad6e757a18611aed7bcbe8eeaac2de48722fcdbe1631490917"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lz-wang/pvectl/releases/download/v2.0.0/pve-v2.0.0-linux-arm64"
      sha256 "5a5b1060932dcf145a4efa4f6265dfbdc426e068800ac2c194ae96819c791877"
    else
      url "https://github.com/lz-wang/pvectl/releases/download/v2.0.0/pve-v2.0.0-linux-amd64"
      sha256 "a2c47316024b06cec87b5794b4090314013e0d0887c3c943c9337d91dd7d8c48"
    end
  end

  def install
    binary = Dir["pve-*"].first
    chmod 0755, binary
    bin.install binary => "pve"
  end

  test do
    assert_match "v2.0.0", shell_output("#{bin}/pve version -o json")
  end
end
