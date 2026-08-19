class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.8/m2h_0.9.8_darwin_arm64.tar.gz"
      sha256 "0bf962d0b0922cdc06b6975ee63da86eb0845de8cb8e3bd9c68a18bc6430a4cb"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.8/m2h_0.9.8_darwin_amd64.tar.gz"
      sha256 "fa9def50ea2b5a012e7f7fc493e542d366c28f886bba7f7fada57a07e52d03db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.8/m2h_0.9.8_linux_arm64.tar.gz"
      sha256 "073a42dc7d274f411a1b8b7ca7f737b40ba962e79cf8c3bb88c6e88d8142de1a"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.8/m2h_0.9.8_linux_amd64.tar.gz"
      sha256 "615884207399a073384a7a7db6fb1bc2be1ffa0cca342993c4357cb22a5cd12d"
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
