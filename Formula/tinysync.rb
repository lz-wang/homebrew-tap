class Tinysync < Formula
  desc "File sync server for HomeLab with WebDAV, S3 and SFTP sources"
  homepage "https://github.com/lz-wang/tinysync"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.16.0/tinysync_0.16.0_darwin_arm64.tar.gz"
      sha256 "8c2636a7d306d25448ac1eb18744c7a8f5bfcc2768642c322a5ffb2116ae24a0"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.16.0/tinysync_0.16.0_darwin_amd64.tar.gz"
      sha256 "9d01ac1932baa76929b44b89f8cd23a5b312826c3d59fe5cf103215dd82a6efe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.16.0/tinysync_0.16.0_linux_arm64.tar.gz"
      sha256 "a8f794b19d20569feda42f86ef6cd8d1098349c46d1457607e086d431805d8ec"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.16.0/tinysync_0.16.0_linux_amd64.tar.gz"
      sha256 "646ba7ff52120cfba12b7633ee287a446e9a86659c6cd258738e1651c08edf05"
    end
  end

  def install
    bin.install "tinysync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinysync --version")
  end
end
