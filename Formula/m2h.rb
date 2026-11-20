class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.28.0/m2h_0.28.0_darwin_arm64.tar.gz"
      sha256 "714ef4e2e88e1fd4920b1d0ded73f3ad87d742bb511f763bf677d6c4d0da5692"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.28.0/m2h_0.28.0_darwin_amd64.tar.gz"
      sha256 "f70aac798b8f8c94005ace8c2d48783ee065e366519f9bf289a3522ecae344f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.28.0/m2h_0.28.0_linux_arm64.tar.gz"
      sha256 "6bef14a2a69777b61fef0d9c76e0bb53cc4c136244c2db98f89418b7839059db"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.28.0/m2h_0.28.0_linux_amd64.tar.gz"
      sha256 "4878747b46a44134d5f27881fb421aebe552d41e25fb6d185d35a0f23f607e17"
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
