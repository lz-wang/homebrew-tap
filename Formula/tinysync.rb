class Tinysync < Formula
  desc "File sync server for HomeLab with WebDAV, S3 and SFTP sources"
  homepage "https://github.com/lz-wang/tinysync"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.13.0/tinysync_0.13.0_darwin_arm64.tar.gz"
      sha256 "8e83115dcff6cc589b34a655e43cf565c7539bc2cbc82fceb1e101744aece900"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.13.0/tinysync_0.13.0_darwin_amd64.tar.gz"
      sha256 "cbdd3ab171b801f86c80cb2e2802a02b451acbe83eaa86882c498e0aa7c13aef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.13.0/tinysync_0.13.0_linux_arm64.tar.gz"
      sha256 "d7d32ec4f315b029c053cc96f50960d600bd0aa216779dfb781f1d9b0615c169"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.13.0/tinysync_0.13.0_linux_amd64.tar.gz"
      sha256 "750a16f846693fa7bdee8e8c5211319c710a9192d72e0f5331c74b309ef5d40a"
    end
  end

  def install
    bin.install "tinysync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinysync --version")
  end
end
