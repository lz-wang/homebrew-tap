class Tinysync < Formula
  desc "File sync server for HomeLab with WebDAV, S3 and SFTP sources"
  homepage "https://github.com/lz-wang/tinysync"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.10.1/tinysync_0.10.1_darwin_arm64.tar.gz"
      sha256 "fff0de28e6569c0a427218554cab196c844b0a11515c67549008551a4b9e8a20"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.10.1/tinysync_0.10.1_darwin_amd64.tar.gz"
      sha256 "9c55b36d6cff42a6b14f346e5b95ad96d95948e05fd6323e6327d0f840756046"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.10.1/tinysync_0.10.1_linux_arm64.tar.gz"
      sha256 "8a198887df7fd034b030118f698db6809a417499c4864e2ca860c0075c2ed173"
    end

    on_intel do
      url "https://github.com/lz-wang/tinysync/releases/download/v0.10.1/tinysync_0.10.1_linux_amd64.tar.gz"
      sha256 "4b6e56fc5e202bef053bcb5c4af591b02b32bc314ee0ae03bbd6ce3e9c410ca4"
    end
  end

  def install
    bin.install "tinysync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinysync --version")
  end
end
