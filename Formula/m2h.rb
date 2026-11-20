class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.0/m2h_0.29.0_darwin_arm64.tar.gz"
      sha256 "cce69311290d6c9f45affb53b52f671cc3adce9c8c6424d1a21c4bfd009b385c"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.0/m2h_0.29.0_darwin_amd64.tar.gz"
      sha256 "e5386e6f033eee42f44c9d6a4da8c518092a2301b06c3ddffc5c2b36fd4d60b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.0/m2h_0.29.0_linux_arm64.tar.gz"
      sha256 "4c633c075386a008a4be046c5f5f1982e8514c9f35d0e73d434bb340c4ade6cd"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.0/m2h_0.29.0_linux_amd64.tar.gz"
      sha256 "633cc076b6fee7f1fdf3248d824e420188ca57abf984830376ae31dff55ed723"
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
