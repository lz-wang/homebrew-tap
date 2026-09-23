class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.21.1/m2h_0.21.1_darwin_arm64.tar.gz"
      sha256 "2c033ce4b7240ffda629d72cae1b8bca6145f45963a2c0d34f00eb983f28efba"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.21.1/m2h_0.21.1_darwin_amd64.tar.gz"
      sha256 "712c3868e75ebf6c1eae6f34c52983f4f38a5d8ad15bca42819429c7524c793a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.21.1/m2h_0.21.1_linux_arm64.tar.gz"
      sha256 "7144cc923f7cee233cc0c6e29b32b4678f7f1d85f6218a2d0666c17f9cb5b98d"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.21.1/m2h_0.21.1_linux_amd64.tar.gz"
      sha256 "d4d22f570126f943b676e529717ca9e546b76a4b94b7088eb152c79e93c6532e"
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
