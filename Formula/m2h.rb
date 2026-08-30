class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.2/m2h_0.15.2_darwin_arm64.tar.gz"
      sha256 "22a49121797fd68b01c672e2ca39137ff90fedb3401ddd05647315ce0fc7b0b6"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.2/m2h_0.15.2_darwin_amd64.tar.gz"
      sha256 "599691653fd616f5b1685f9d63731543fbaf03a26310e0bcb6d457a4a9fa4732"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.2/m2h_0.15.2_linux_arm64.tar.gz"
      sha256 "72c4e97a02561e76c73837e426dbf2cac86c8119a884f112608810b3fcafd1b9"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.2/m2h_0.15.2_linux_amd64.tar.gz"
      sha256 "aed5cd2b09e238e8038e676a656423f55038183b7679076e7b09001fc3799037"
    end
  end

  def install
    bin.install "m2h"
  end

  test do
    (testpath/"example.md").write "# m2h\n"
    system bin/"m2h", "export", "example.md"
    assert_path_exists testpath/"example.html"
    assert_match "<h1", (testpath/"example.html").read
  end
end
