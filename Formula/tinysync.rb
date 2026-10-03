class Tinysync < Formula
  desc "File sync server for HomeLab with WebDAV, S3 and SFTP sources"
  homepage "https://github.com/lz-wang/tinysync"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.14.0/tinysync_0.14.0_darwin_arm64.tar.gz"
      sha256 "c3795a6a80855130ba01786a4cd2b02982e39dccbd2c4869f2ac045fec778cf5"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.14.0/tinysync_0.14.0_darwin_amd64.tar.gz"
      sha256 "4786669f9eba37d2c29ca2bdebecadbe51c318d3e4d5c40858b4d2701c6ea0b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.14.0/tinysync_0.14.0_linux_arm64.tar.gz"
      sha256 "2dedfea1f47d10c5437e01747811172bbe7903332148cc22d5b9f39c78547c24"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.14.0/tinysync_0.14.0_linux_amd64.tar.gz"
      sha256 "d08cb36fa48ed54644be6bb176a848361fee40142d17033149eb034d866c8dd4"
    end
  end

  def install
    bin.install "tinysync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinysync --version")
  end
end
