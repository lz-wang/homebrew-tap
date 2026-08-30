class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.1/m2h_0.15.1_darwin_arm64.tar.gz"
      sha256 "ab838514c2e73a82e27e8f9ca9470a3b424bd09ae4bd9f66be34e675bf7081c6"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.1/m2h_0.15.1_darwin_amd64.tar.gz"
      sha256 "e62b204a1e911149e21abd6d8d93db2dbeed044dd557ee9400aad065ef3a4164"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.1/m2h_0.15.1_linux_arm64.tar.gz"
      sha256 "cc84dc3c174a3ec1d8e6d67dc0c0703a79b21294a00abc6a35a6bf470f7c5a1a"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.1/m2h_0.15.1_linux_amd64.tar.gz"
      sha256 "e9f8bb377dbf90674629b1fdc7ecb331125a4bd91812852492ab704cd8d867ec"
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
