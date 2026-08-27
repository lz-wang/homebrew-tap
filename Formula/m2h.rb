class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.13.0/m2h_0.13.0_darwin_arm64.tar.gz"
      sha256 "54430db6b489d9ba79e9e2d88dfd3af774267f135a59b4ce367d972690592b7e"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.13.0/m2h_0.13.0_darwin_amd64.tar.gz"
      sha256 "34120af5ed3e5bfb98bdb43d722ba9337f7b3b4da8af737280ae8250c83fb0ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.13.0/m2h_0.13.0_linux_arm64.tar.gz"
      sha256 "e02443cdc4b9ae4d7345c65054695930d8a90f6da8371285f06b955782f834a0"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.13.0/m2h_0.13.0_linux_amd64.tar.gz"
      sha256 "d2de77aa7d103a4c731f0fa5fd65cf8c90d7c5a68e6506326ec20f334b578cea"
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
