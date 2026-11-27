class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.30.0/m2h_0.30.0_darwin_arm64.tar.gz"
      sha256 "46a4cb7c15855b6afdf8860ff2c4a9bb1bbd82bc1310a9a57bd0433e23ce0377"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.30.0/m2h_0.30.0_darwin_amd64.tar.gz"
      sha256 "a5be83cc2b6552f19a9122314dc421a50b9586b8de33814816e2acc134bbd72b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.30.0/m2h_0.30.0_linux_arm64.tar.gz"
      sha256 "ef9e7ee00093bbf5771e66abab3ab57baf33cda794ef8d14365dd76d5c7c1184"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.30.0/m2h_0.30.0_linux_amd64.tar.gz"
      sha256 "38a69d9310820535fce0269449986c2d3d8f64914b2fc71a4844e62284559b46"
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
