class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.5/m2h_0.9.5_darwin_arm64.tar.gz"
      sha256 "0e930f4d4d18196b92f87e8812bf4204c0ff074a04041f901e9bbaa3e89f1009"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.5/m2h_0.9.5_darwin_amd64.tar.gz"
      sha256 "4cdc49652792769f9a3a3b4c6fda0286bdf41d30c955dc15b1600bdfc0f5195d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.5/m2h_0.9.5_linux_arm64.tar.gz"
      sha256 "aa0b0a9c2dc9f82f6f45595543b1d0b32ec1740cd3c193d8e1a9448dec7dde58"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.5/m2h_0.9.5_linux_amd64.tar.gz"
      sha256 "3f86fc76253b9412abf3ad0935172331350424e221b5e33fe9fb577c1274ab6c"
    end
  end

  def install
    bin.install "m2h"
  end

  test do
    (testpath/"example.md").write "# m2h\n"
    system bin/"m2h", "--yes", "example.md"
    assert_path_exists testpath/"example.html"
    assert_match "<h1", (testpath/"example.html").read
  end
end
