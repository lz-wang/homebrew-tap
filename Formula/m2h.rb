class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.2/m2h_0.25.2_darwin_arm64.tar.gz"
      sha256 "4693caeaa146134f85ebe5ecbc4efdb17f0de5422171b0bcc338f0cb54aaf07a"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.2/m2h_0.25.2_darwin_amd64.tar.gz"
      sha256 "9d329a666c055c90d2e780adb9036a1042f2ac1315126d323375eec1d59bdf0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.2/m2h_0.25.2_linux_arm64.tar.gz"
      sha256 "25689f69cb05cbb8fa2890223842a2ec1bfba6c252e8a46ae8792072079c4a6e"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.2/m2h_0.25.2_linux_amd64.tar.gz"
      sha256 "f67ef21505dea2adcd1043a730142d8a1a3bc0981689502f7f41ac9458ecee07"
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
