class OciSync < Formula
  desc "OCI container image synchronization tool with Web UI and scheduling"
  homepage "https://github.com/lz-wang/homebrew-tap"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.1/oci-sync_0.3.1_darwin_arm64.tar.gz"
      sha256 "4330384b917af01f65250bb8f6b869492d585f7f0381ce11d12f12d1881c5d04"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.1/oci-sync_0.3.1_darwin_amd64.tar.gz"
      sha256 "203de5f54c77d9e6f5ccb17e360cd6ab3131f38e06693a19045fe8b74bbe3db5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.1/oci-sync_0.3.1_linux_arm64.tar.gz"
      sha256 "0a9783f87de75a1e629b1fbe11b205b752ea9ec70b3c724e6b6991bbc041e35d"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.1/oci-sync_0.3.1_linux_amd64.tar.gz"
      sha256 "b7d05734d951c30e8d73a08516cd44aa55368c93d79b1dbdcf07c941f8085c4f"
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
