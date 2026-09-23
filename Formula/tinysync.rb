class Tinysync < Formula
  desc "File sync server for HomeLab with WebDAV, S3 and SFTP sources"
  homepage "https://github.com/lz-wang/tinysync"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.11.0/tinysync_0.11.0_darwin_arm64.tar.gz"
      sha256 "fbcf01f65ede79834ffd15b4bbe758fe2f6f4a1f945a89929f0ea87d83fbe0d4"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.11.0/tinysync_0.11.0_darwin_amd64.tar.gz"
      sha256 "a13f458275e70942b19d7d10caa58dfe7f4e9452b84a4abe27769139cc5329a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.11.0/tinysync_0.11.0_linux_arm64.tar.gz"
      sha256 "fb426223029da1220b17337e52761867df1956a94222d0e21c8bbbe9a7fd0a20"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.11.0/tinysync_0.11.0_linux_amd64.tar.gz"
      sha256 "ce23d329357246028e333c64b3ef2a20bfa49a33a4cf3c784e37cc3c8adb87b3"
    end
  end

  def install
    bin.install "tinysync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinysync --version")
  end
end
