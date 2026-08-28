class HomelabPanel < Formula
  desc "Lightweight dashboard for personal homelabs"
  homepage "https://github.com/lz-wang/homelab-panel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.3/homelab-panel_v0.3_darwin_arm64.tar.gz"
      sha256 "71b001674dab31ead5728c98cb789ea8fb639de560484146ef19f6009dea429a"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.3/homelab-panel_v0.3_darwin_amd64.tar.gz"
      sha256 "2f8a3f5e189d47b5901327657a787984d25330c7fb1d857d6f245b517f5c14f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.3/homelab-panel_v0.3_linux_arm64.tar.gz"
      sha256 "89a43515eff2f03905e674feb8bfd947dc38d31c707a1bec7147282dbfc28484"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.3/homelab-panel_v0.3_linux_amd64.tar.gz"
      sha256 "12de57d5805cd03d64c870420230134efe2b66da731ee622154eb6f54614a95a"
    end
  end

  def install
    bin.install "homelab-panel"
  end

  test do
    assert_match "v0.3", shell_output("#{bin}/homelab-panel version")
  end
end
