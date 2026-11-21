class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.2/m2h_0.29.2_darwin_arm64.tar.gz"
      sha256 "3a02e52831bf1d4fd6e4f3cb44080af48677db4a52926af41135057bbe60ab29"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.2/m2h_0.29.2_darwin_amd64.tar.gz"
      sha256 "01dfbd2896f667de7216cabae8d7341bdb204104124e3d310263c30dc6e4bd0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.2/m2h_0.29.2_linux_arm64.tar.gz"
      sha256 "8840baff97521a9dc9c67f8b29f61d6cbbe18bfd8f7b1f8188bd07021079ecbc"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.2/m2h_0.29.2_linux_amd64.tar.gz"
      sha256 "552c3ee863fec92560498fb0646a81c0207daa3740cb6dc6f60b1cdd2a06015d"
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
