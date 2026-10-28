class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.0/m2h_0.25.0_darwin_arm64.tar.gz"
      sha256 "516bec890499d6f38fe8421b7d41d967fb9b2da0cdb13e7d3b21f49475f8f9b3"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.0/m2h_0.25.0_darwin_amd64.tar.gz"
      sha256 "5c8444b0b657642f36185a7de84c6f088d0a243843df55207069af71568546c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.0/m2h_0.25.0_linux_arm64.tar.gz"
      sha256 "3f74d81fb2f6748559acf5b1661e33eeb0aea4090ecfa3541f2214756fbc3486"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.0/m2h_0.25.0_linux_amd64.tar.gz"
      sha256 "f8e32fded77d8149c14924683e60c76037edb458d1a44e9753d28b2d30e42b9f"
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
