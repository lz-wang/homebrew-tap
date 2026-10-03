class OciSync < Formula
  desc "OCI container image synchronization tool with Web UI and scheduling"
  homepage "https://github.com/lz-wang/homebrew-tap"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.1.0/oci-sync_0.1.0_darwin_arm64.tar.gz"
      sha256 "c1790968becbe74694e28399468d5aae30bab874074ec464df1eac4a442530d7"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.1.0/oci-sync_0.1.0_darwin_amd64.tar.gz"
      sha256 "9b1115f04e287d79841c94a105951829ef5103546888f53fe3e9c35d8f85d25d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.1.0/oci-sync_0.1.0_linux_arm64.tar.gz"
      sha256 "1d9bdd161a4bf00377b49c954242fcbdc9db31bc050296ae1024e0e7c71ebf1c"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.1.0/oci-sync_0.1.0_linux_amd64.tar.gz"
      sha256 "891c6ebd0ede0005d1d1a93002f74fd4a47fb6842db30d6e6c5d87a30d9ea162"
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
