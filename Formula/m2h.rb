class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.1/m2h_0.17.1_darwin_arm64.tar.gz"
      sha256 "1319aeb0af09304a9bb7adf1473a88800254410b85f5c64c6a9219ccc28040be"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.1/m2h_0.17.1_darwin_amd64.tar.gz"
      sha256 "819b6cc8a94f247739a801bcba34159f314d9759d957671a4b64f9723ce105d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.1/m2h_0.17.1_linux_arm64.tar.gz"
      sha256 "877706300bbd6a7f3a7d3dcac553a64fd1bc8d65de80f2a74523f365148c0f52"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.1/m2h_0.17.1_linux_amd64.tar.gz"
      sha256 "9c777add20fdda7f9b3373a0c90499f811f28d3862a2d38a439e068dba8628d6"
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
