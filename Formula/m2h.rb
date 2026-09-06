class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.18.0/m2h_0.18.0_darwin_arm64.tar.gz"
      sha256 "aef29274f6f7d8ef75f6fe1b57340f48b0d582fcec3f105d6732913eb4e2edf8"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.18.0/m2h_0.18.0_darwin_amd64.tar.gz"
      sha256 "f8ff52fbe29e3850de5cf4c6aaf9c4be48e0c42a3236b550ed2ab5471fe3f8c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.18.0/m2h_0.18.0_linux_arm64.tar.gz"
      sha256 "ad8d0397419fb24a6e79a27b8e2dc46042bebdd096ca1e9f5f036e53aaa018d1"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.18.0/m2h_0.18.0_linux_amd64.tar.gz"
      sha256 "27d9c403a0070a405d6123b356564d6aa27b363eca16458001f1c14bc35bf586"
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
