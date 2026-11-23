class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.3/m2h_0.29.3_darwin_arm64.tar.gz"
      sha256 "f482f5b0378cbb2d693cc3218f6fb76e5a52f5c341e5f3b2448eb7c3f9885eb4"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.3/m2h_0.29.3_darwin_amd64.tar.gz"
      sha256 "9c6da4567f5d7c4db4d9b5f01b64dac98f17be23ea5d8a3ba5b390ccc99d3490"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.3/m2h_0.29.3_linux_arm64.tar.gz"
      sha256 "607e5c9eb05bf96f7ce826e5f23aa588818e095545f5f525017543bb64916386"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.3/m2h_0.29.3_linux_amd64.tar.gz"
      sha256 "e356a86dc1c4c79bcc98cd4992759aa0a6e20485260658db162ede7131d384ce"
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
