class M2h < Formula
  desc "Convert and preview GitHub-flavored Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.1/m2h_0.9.1_darwin_arm64.tar.gz"
      sha256 "385a58c4ffc21bfeb5393fbf0a5ba5c94d5ca7082021a6b3767c1df221185d4d"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.1/m2h_0.9.1_darwin_amd64.tar.gz"
      sha256 "fdeb8ae275d793ca2af2d46d1388f2afea7b03134305f31e3a4f30fa7349d34e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.1/m2h_0.9.1_linux_arm64.tar.gz"
      sha256 "76091cad768b7116b2da017f6de2200fcec1eab5245a2b84bba357f90a9913b7"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.1/m2h_0.9.1_linux_amd64.tar.gz"
      sha256 "253abe2e759946f971582565874dd110d4f5cd5758c564c05e04c25cef24d14a"
    end
  end

  def install
    bin.install "m2h"
  end

  test do
    (testpath/"example.md").write "# m2h\n"
    system bin/"m2h", "convert", "example.md"
    assert_path_exists testpath/"example.html"
    assert_match "<h1", (testpath/"example.html").read
  end
end
