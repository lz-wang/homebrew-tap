class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.18.1/m2h_0.18.1_darwin_arm64.tar.gz"
      sha256 "1d80363bdacbe12296267851b7d42a55c40eb0ca5b45c7fa3c09f41b640ec269"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.18.1/m2h_0.18.1_darwin_amd64.tar.gz"
      sha256 "5379aaca8093dea4192bccc775a50e9a8ac76fca6da56c52a559545a415836f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.18.1/m2h_0.18.1_linux_arm64.tar.gz"
      sha256 "41251b19ea6e6f13636bb77211e543d3e6dddf10cc69d6bf4b093c01080a4a00"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.18.1/m2h_0.18.1_linux_amd64.tar.gz"
      sha256 "5991f3cbb482246dfe234b590db7fb5d9dca487f767dcd36b0a0b835f6440cf8"
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
