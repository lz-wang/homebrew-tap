class OciSync < Formula
  desc "OCI container image synchronization tool with Web UI and scheduling"
  homepage "https://github.com/lz-wang/homebrew-tap"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.2.0/oci-sync_0.2.0_darwin_arm64.tar.gz"
      sha256 "16321f0bc6a17aad11b45f406e90261f33e9fa80da53e2e2cd58dd6f7b038321"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.2.0/oci-sync_0.2.0_darwin_amd64.tar.gz"
      sha256 "b8815c4fa1038415348c06c4cbff4eee12d3374f697a081da805f1ba849a1c1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.2.0/oci-sync_0.2.0_linux_arm64.tar.gz"
      sha256 "8d0c1ab3f323409ce8c59202b17135e4d7f585ec21e1be3d6d4ddbdfd68410b1"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.2.0/oci-sync_0.2.0_linux_amd64.tar.gz"
      sha256 "99d48702f683317d1567038f79a749c1c92087a2a2d282e123d5a686d537ac6d"
    end
  end

  def install
    bin.install "oci-sync"
  end

  test do
    cp bin/"oci-sync", testpath/"oci-sync"
    assert_match version.to_s, shell_output("./oci-sync --version")
  end
end
