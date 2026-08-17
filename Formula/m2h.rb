class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.6/m2h_0.9.6_darwin_arm64.tar.gz"
      sha256 "7caa34fdd3b1636b01ba814eeed4600d55ff0c865085890cd0c9666eab804e69"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.6/m2h_0.9.6_darwin_amd64.tar.gz"
      sha256 "abbdf8a884a355d469e8a47610bede6bf347968c7e5d391118610442620df5ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.6/m2h_0.9.6_linux_arm64.tar.gz"
      sha256 "76abefeeeaaad79ca8208f1cde403a3a1000147d183542fe4db0fc09764f1bcd"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.6/m2h_0.9.6_linux_amd64.tar.gz"
      sha256 "6140140955416e145a72ce7e9dd3309702102383613e5fee07053b91bfabd887"
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
