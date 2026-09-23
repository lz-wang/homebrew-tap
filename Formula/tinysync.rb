class Tinysync < Formula
  desc "File sync server for HomeLab with WebDAV, S3 and SFTP sources"
  homepage "https://github.com/lz-wang/tinysync"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.12.0/tinysync_0.12.0_darwin_arm64.tar.gz"
      sha256 "9bcd425febe92c1f8a013098f763ccc7615cba0633c3ffb3484c8ef999b4e3ee"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.12.0/tinysync_0.12.0_darwin_amd64.tar.gz"
      sha256 "9d5d24e9175d9db27a48824009ccfade2d74f2978f6751904344ab830b662e7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.12.0/tinysync_0.12.0_linux_arm64.tar.gz"
      sha256 "61736f7a7c2d82e6169be05f3e3112243dcc986729698f832b7af681152ee376"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.12.0/tinysync_0.12.0_linux_amd64.tar.gz"
      sha256 "b6d58ba405a02710e92a225e7595be1743f0bd1424233b11d808da1235fe40b7"
    end
  end

  def install
    bin.install "tinysync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinysync --version")
  end
end
