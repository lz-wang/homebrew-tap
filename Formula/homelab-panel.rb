class HomelabPanel < Formula
  desc "Lightweight dashboard for personal homelabs"
  homepage "https://github.com/lz-wang/homelab-panel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.5.0/homelab-panel_0.5.0_darwin_arm64.tar.gz"
      sha256 "71ea0de8eb2189a4ffc3a283208e5a14d17d13179b152638eea45b8604ea8e9f"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.5.0/homelab-panel_0.5.0_darwin_amd64.tar.gz"
      sha256 "22033efa4330c9999ed28df87426e3c326c1c02638febfb4f12ea9ceece8b496"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.5.0/homelab-panel_0.5.0_linux_arm64.tar.gz"
      sha256 "6ce9b5f0af3cd49d6846afe37be83853603fdde8fbb8f0824955462ed374ddf1"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.5.0/homelab-panel_0.5.0_linux_amd64.tar.gz"
      sha256 "6a16439a17562ce347a12175419fd3fe1fdb3d6eb1d7fa59de06dca21d632c93"
    end
  end

  def install
    bin.install "homelab-panel"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/homelab-panel version")
  end
end
