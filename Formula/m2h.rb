class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.0/m2h_0.17.0_darwin_arm64.tar.gz"
      sha256 "18a9c4543ea6b7923bafd673f83142c1fa7fbba67ec4f611919c3bfbdc4bd0c3"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.0/m2h_0.17.0_darwin_amd64.tar.gz"
      sha256 "cede1e9690d9ec4ed54b57b22c420603987839906f63009b8a1be8cb701ada92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.0/m2h_0.17.0_linux_arm64.tar.gz"
      sha256 "1246fb0731cbc1e9cc37ae102b5b21b08b8647526f21233aee9d99651dddb335"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.0/m2h_0.17.0_linux_amd64.tar.gz"
      sha256 "ef4e0558b4cb227b392bf5d81973b27b66096a3139c7ef5d2a77ee0da071ca62"
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
