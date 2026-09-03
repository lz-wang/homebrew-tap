class HomelabPanel < Formula
  desc "Lightweight dashboard for personal homelabs"
  homepage "https://github.com/lz-wang/homelab-panel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.4/homelab-panel_v0.4_darwin_arm64.tar.gz"
      sha256 "4673660b33da6d5f2285ce4dfd1b5b7218bc684baaf3e0174f83fd5eec6ecd5b"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.4/homelab-panel_v0.4_darwin_amd64.tar.gz"
      sha256 "93b10cc83fad7b1daa1538358c2710a81de7711ffe06eadf7c6d5b9d5e25fc75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.4/homelab-panel_v0.4_linux_arm64.tar.gz"
      sha256 "fb805ef6983a646182ae2e0a16db5fc5b2fb89325161a96189c1ab59364b384a"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.4/homelab-panel_v0.4_linux_amd64.tar.gz"
      sha256 "e16b6d863fb19ab038c62571538aad119f1f9a30be509ed8698f4f08c360be36"
    end
  end

  def install
    bin.install "homelab-panel"
  end

  test do
    assert_match "v0.4", shell_output("#{bin}/homelab-panel version")
  end
end
