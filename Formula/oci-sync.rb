class OciSync < Formula
  desc "OCI container image synchronization tool with Web UI and scheduling"
  homepage "https://github.com/lz-wang/homebrew-tap"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.3/oci-sync_0.3.3_darwin_arm64.tar.gz"
      sha256 "90c5705c47e5a7000c7a2a117928f2b742369c30b8378e30a82babf31d86965d"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.3/oci-sync_0.3.3_darwin_amd64.tar.gz"
      sha256 "58ea29440a378d60ed834864b14681e8cc62e3e051f9db9c1f92277fb9c63ed1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.3/oci-sync_0.3.3_linux_arm64.tar.gz"
      sha256 "59976b4eb6c3cd2f3f779c8402d2f6c1a7228b3c8281745d2db0207593eda9f6"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/oci-sync-v0.3.3/oci-sync_0.3.3_linux_amd64.tar.gz"
      sha256 "c9c18542bd9c86755339290706007825444a10afa1e6863a7a896ac330061ec9"
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
