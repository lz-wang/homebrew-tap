class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.21.0/m2h_0.21.0_darwin_arm64.tar.gz"
      sha256 "6f798832c54616828c772a30d0f56ae50dc384fe1dd58a47749d21cc64e762ca"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.21.0/m2h_0.21.0_darwin_amd64.tar.gz"
      sha256 "af3192d73aac05ba2d522ec297a6d362fcbe221052ba1a2ea9a7bb22fcd2fe9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.21.0/m2h_0.21.0_linux_arm64.tar.gz"
      sha256 "413a2b3a3cd47de3af01c137e7b4852ad94c008ea0ce80d1f2ada66f243a1119"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.21.0/m2h_0.21.0_linux_amd64.tar.gz"
      sha256 "881dd13448720404b36200bd73f0030f33f6b78160ca284d44b14373978c54d7"
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
