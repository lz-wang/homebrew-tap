class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.19.0/m2h_0.19.0_darwin_arm64.tar.gz"
      sha256 "ddd219f34e14339f4a77efcf84b6bf05a20a00453d49509c0ce5f4b2b77a6ce2"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.19.0/m2h_0.19.0_darwin_amd64.tar.gz"
      sha256 "7fbebb5db62c662b8aaba7af8505596d617438dce11fa00c2bd5dbdf6c07f5e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.19.0/m2h_0.19.0_linux_arm64.tar.gz"
      sha256 "6f3f9d8a0af2d00f3f7d58d65d0a68cd74b23abdcba8a617a64d7c00ae5dee59"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.19.0/m2h_0.19.0_linux_amd64.tar.gz"
      sha256 "55794cf629d1bffa75d1539a6827ff9c850b5130f13dc647fbcd0c75542d26b2"
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
