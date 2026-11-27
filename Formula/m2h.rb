class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.30.1/m2h_0.30.1_darwin_arm64.tar.gz"
      sha256 "0077d6b785070bfad2d5941f9958928debc93d6c4a04b7d24ee877b59f877773"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.30.1/m2h_0.30.1_darwin_amd64.tar.gz"
      sha256 "765b99ed7d5b9ecc8da846a402f191e0dff6199e51ea6be99b84aef91cf49397"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.30.1/m2h_0.30.1_linux_arm64.tar.gz"
      sha256 "a1d905042b9e71dedf03402cfd26b70afeefa045a58717e6a1e5bf74a8a713e4"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.30.1/m2h_0.30.1_linux_amd64.tar.gz"
      sha256 "a247ef54ab0a8460018532611a6a73752315008c99e9eb79ca349f589b172663"
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
