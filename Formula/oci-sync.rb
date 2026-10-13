class OciSync < Formula
  desc "OCI container image synchronization tool with Web UI and scheduling"
  homepage "https://github.com/lz-wang/homebrew-tap"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.2/oci-sync_0.3.2_darwin_arm64.tar.gz"
      sha256 "0bcaf27108ae8c4ea65f862057531c4d5c9140ed63a91fe14ce0f5e897748b0d"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.2/oci-sync_0.3.2_darwin_amd64.tar.gz"
      sha256 "436c114daceb0bbfdb6643e6cce72e3a8e048e8919dae7740903777db4fbc085"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.2/oci-sync_0.3.2_linux_arm64.tar.gz"
      sha256 "bdd1a2f019c7dcfd5465efc6de1b23673c792ee572afd3f5dea823dfef99d1db"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.2/oci-sync_0.3.2_linux_amd64.tar.gz"
      sha256 "d7d7e0de7148fca276cfc724e12523b37ef7c7ca00258c22733cf2ef6165eedc"
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
