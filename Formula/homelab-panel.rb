class HomelabPanel < Formula
  desc "Lightweight dashboard for personal homelabs"
  homepage "https://github.com/lz-wang/homelab-panel"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.2/homelab-panel_v0.2_darwin_arm64.tar.gz"
      sha256 "d1ae90ab7f4aa30ed344e6bc155920286bf1a6ac43b532e8f89f54a02afe3efa"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.2/homelab-panel_v0.2_darwin_amd64.tar.gz"
      sha256 "58343b998a4e8e7f0e403ec67a4c4a580db424c069b07d869ae4d55bcfca9b8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.2/homelab-panel_v0.2_linux_arm64.tar.gz"
      sha256 "702786ed42155eafac48ec3a1e4ae4915a9bcc22f1e7cb24189c6e84e103ee0d"
    end

    on_intel do
      url "https://github.com/lz-wang/homelab-panel/releases/download/v0.2/homelab-panel_v0.2_linux_amd64.tar.gz"
      sha256 "9f1f08cba2cae763359d10e9c49d5cb9b40be60558753f4260dc1ecb66e65d2a"
    end
  end

  def install
    bin.install "homelab-panel"
  end

  test do
    assert_match "v0.2", shell_output("#{bin}/homelab-panel version")
  end
end
