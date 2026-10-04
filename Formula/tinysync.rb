class Tinysync < Formula
  desc "File sync server for HomeLab with WebDAV, S3 and SFTP sources"
  homepage "https://github.com/lz-wang/tinysync"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.15.0/tinysync_0.15.0_darwin_arm64.tar.gz"
      sha256 "b89183b047e92a5c1389f13fda816dffc1da12c0165ed1e4c06a557346237db2"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.15.0/tinysync_0.15.0_darwin_amd64.tar.gz"
      sha256 "43ed3a22c2ad51ae4b7fb3137ad91631c67ad8e729eb797b15d9a10b16ff7214"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.15.0/tinysync_0.15.0_linux_arm64.tar.gz"
      sha256 "4f29b3894474ce01f2653b39311cafc4cbae6cc0da7f90a977eb4a58de3b3123"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.15.0/tinysync_0.15.0_linux_amd64.tar.gz"
      sha256 "0c1869f63847694266fac18fec66839e5b4edc455223d08013e5aa5005dff28b"
    end
  end

  def install
    bin.install "tinysync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinysync --version")
  end
end
