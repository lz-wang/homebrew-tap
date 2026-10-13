class OciSync < Formula
  desc "OCI container image synchronization tool with Web UI and scheduling"
  homepage "https://github.com/lz-wang/homebrew-tap"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.4/oci-sync_0.3.4_darwin_arm64.tar.gz"
      sha256 "fcde0988e58e5fc312f1ed7736461468b73fe955cbc4d50bd1dd1b76b4aad0cb"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.4/oci-sync_0.3.4_darwin_amd64.tar.gz"
      sha256 "217898798efce6c4b0a1261a2507788101868e9d344f7f21b3bb3e7fbf182900"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.4/oci-sync_0.3.4_linux_arm64.tar.gz"
      sha256 "de4e67bfe9b5e90df46dabb5b4a2b36c62530cb7446b34972bc98fc070132bc2"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.4/oci-sync_0.3.4_linux_amd64.tar.gz"
      sha256 "b913d4122278fa17021c88770dc7f7db0a408dfdf6aac30f37c47c8056a20689"
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
