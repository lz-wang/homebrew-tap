class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.10.0/m2h_0.10.0_darwin_arm64.tar.gz"
      sha256 "72ba306d89f5c4cbb43d38aa4aa45bceb0cc68ca965223e1de86b40960bf5491"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.10.0/m2h_0.10.0_darwin_amd64.tar.gz"
      sha256 "288cfcb7b500ea8c1c7798d80ad0668855dcf12ed7e40b0e329b062f2ba1ab46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.10.0/m2h_0.10.0_linux_arm64.tar.gz"
      sha256 "a07a796f7e6f80db80562cf8360a226a91b6f9b18d2b58d707ea645400c9d8b2"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.10.0/m2h_0.10.0_linux_amd64.tar.gz"
      sha256 "3a49cfdc341b60f50a975a7e35586a6f3bb840baecc72222e681f407615bde2f"
    end
  end

  def install
    bin.install "m2h"
  end

  test do
    (testpath/"example.md").write "# m2h\n"
    system bin/"m2h", "--yes", "example.md"
    assert_path_exists testpath/"example.html"
    assert_match "<h1", (testpath/"example.html").read
  end
end
