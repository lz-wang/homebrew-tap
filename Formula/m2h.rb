class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.9/m2h_0.9.9_darwin_arm64.tar.gz"
      sha256 "c5d384ae25f9546fc22d0fc38ce0b66b79da5e7f362a9abd0dfadf9393fb2a9c"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.9/m2h_0.9.9_darwin_amd64.tar.gz"
      sha256 "c6d686b512d165654e864f080d31a93116052f15c2a06992f46a5eb29e97ced4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.9/m2h_0.9.9_linux_arm64.tar.gz"
      sha256 "91b2fa23364c878d92f520bf8ec06f10c44b1f233310c7dbb10b79f15ad50618"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.9/m2h_0.9.9_linux_amd64.tar.gz"
      sha256 "6f9d8daf989d3197d82e8a297bbc926571f1389cfd052213c788278d83f0ad91"
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
