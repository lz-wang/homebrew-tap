class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.26.0/m2h_0.26.0_darwin_arm64.tar.gz"
      sha256 "dc6c1b36dec4170679b86516ea87ee606990ebd9d857f5c4a02c6f7a0eea2b92"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.26.0/m2h_0.26.0_darwin_amd64.tar.gz"
      sha256 "c6c1ccbb48239e2476e884ac8fc31741c28ac14ec723589035c6dcc8420293a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.26.0/m2h_0.26.0_linux_arm64.tar.gz"
      sha256 "353229eecb3e23a2673ea15efb9d9f6c61426102f670cd2b127d485603b5a32f"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.26.0/m2h_0.26.0_linux_amd64.tar.gz"
      sha256 "33fc6fe5e00f767ebb74640c9a99f945d14ecca8d737b43ff016e7189fe3f516"
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
