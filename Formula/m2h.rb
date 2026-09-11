class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.20.1/m2h_0.20.1_darwin_arm64.tar.gz"
      sha256 "a5a76f66a52cc9e7b77d7cf2fd689f5bf689d4b9de784d4adeddfcbb9b53011f"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.20.1/m2h_0.20.1_darwin_amd64.tar.gz"
      sha256 "27166cbae57e115dd31035162902ebd12f2ad388e1a20e5615079dab109d8291"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.20.1/m2h_0.20.1_linux_arm64.tar.gz"
      sha256 "f6826b1ff441db79cb0df2caa03432ba077a130461496e5ed6782d7be67e96ec"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.20.1/m2h_0.20.1_linux_amd64.tar.gz"
      sha256 "77745d6c1d88ca02c45c73f1691832b806e2c1a1c7c9b834c82624eab6a89b94"
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
