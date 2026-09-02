class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.16.0/m2h_0.16.0_darwin_arm64.tar.gz"
      sha256 "4fefc1d3bd186c9ba9c8f79403ba68dc0577c29e19b2471c65b595aae13d96b0"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.16.0/m2h_0.16.0_darwin_amd64.tar.gz"
      sha256 "a416ccabad82e429ced0594e423636a42a0a72c556a0fb5063044a01d7404a2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.16.0/m2h_0.16.0_linux_arm64.tar.gz"
      sha256 "1eb81835ab76d3a2e6dd6b1e51932c364467bbf42a3c3322227f50e9509e694e"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.16.0/m2h_0.16.0_linux_amd64.tar.gz"
      sha256 "016f64541f3ab7ff9c4d0dace55b7f80f60fb7922bf31605d101c008088678cc"
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
