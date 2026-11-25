class HomelabPanel < Formula
  desc "Lightweight dashboard for personal homelabs"
  homepage "https://github.com/lz-wang/homelab-panel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.5.1/homelab-panel_0.5.1_darwin_arm64.tar.gz"
      sha256 "8d532a39924aedb9b431904e015df4e8f7506593a36290e7a6e5544514211b24"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.5.1/homelab-panel_0.5.1_darwin_amd64.tar.gz"
      sha256 "0397a0a94ef87c2bd872cc5e217fad8352e151814be0c15940ad769c67074b60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.5.1/homelab-panel_0.5.1_linux_arm64.tar.gz"
      sha256 "27ae54a32072c5c7924d0f0b3a7259d93ba9505b0017528eabc11469a7de62b9"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.5.1/homelab-panel_0.5.1_linux_amd64.tar.gz"
      sha256 "99a32196646027b599b3387134da5dc1487265464100af2d535d5b3eb83725cc"
    end
  end

  def install
    bin.install "homelab-panel"
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/homelab-panel version")
  end
end
