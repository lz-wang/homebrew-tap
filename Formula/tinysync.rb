class Tinysync < Formula
  desc "File sync server for HomeLab with WebDAV, S3 and SFTP sources"
  homepage "https://github.com/lz-wang/tinysync"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.10.0/tinysync_0.10.0_darwin_arm64.tar.gz"
      sha256 "9b6f79bf910ad38bbba3ff082c722f93675363878a6f18e03de7e9e03c65697a"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.10.0/tinysync_0.10.0_darwin_amd64.tar.gz"
      sha256 "afcad253d804f1948fc0edf973dc83561aaa3d444193b029565dead076a85d4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.10.0/tinysync_0.10.0_linux_arm64.tar.gz"
      sha256 "b22353ce0130ae23f2d184cf5287e006e00c1c3555e0346afd5e73fc2151dc12"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.10.0/tinysync_0.10.0_linux_amd64.tar.gz"
      sha256 "17bbe1259fc0d668c6c628429dd42b0048ce69d86080853f356e82a2072b6ebf"
    end
  end

  def install
    bin.install "tinysync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinysync --version")
  end
end
