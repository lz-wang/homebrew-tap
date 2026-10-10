class OciSync < Formula
  desc "OCI container image synchronization tool with Web UI and scheduling"
  homepage "https://github.com/lz-wang/homebrew-tap"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.0/oci-sync_0.3.0_darwin_arm64.tar.gz"
      sha256 "9af2a14f41364b4f4d800acf0bb93ccf95021fe961e20691165d263174a0f786"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.0/oci-sync_0.3.0_darwin_amd64.tar.gz"
      sha256 "f913fa3f0fb7a14fdf21ef38e1971abc0fec10bff4cd151dd774f5e84b21bc62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.0/oci-sync_0.3.0_linux_arm64.tar.gz"
      sha256 "6c47f57b011b5c14e4fdba586ada25262ff87575ebb126dbce332515dca87afb"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.0/oci-sync_0.3.0_linux_amd64.tar.gz"
      sha256 "001d825ab1041a870da71535d33ce3595d64bc36a724dc176e216712bf806dc7"
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
