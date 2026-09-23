class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.22.0/m2h_0.22.0_darwin_arm64.tar.gz"
      sha256 "91793e1355bca1f90dac24b4e95f2c36d7f4a4c5ef9919e678ae3915934a1bcf"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.22.0/m2h_0.22.0_darwin_amd64.tar.gz"
      sha256 "822884898036b5738aaf6645ed22881516650f28b18204b523a7fffdf0aa22c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.22.0/m2h_0.22.0_linux_arm64.tar.gz"
      sha256 "4669c9efa9fd03d16d8e5a8c912ce45cabde3ccc2d541a8b678ff9dcd7d4ea48"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.22.0/m2h_0.22.0_linux_amd64.tar.gz"
      sha256 "7c54a8407dd72d2e9fb80151669f871e4f3bea00bf201730749203e716c941d6"
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
