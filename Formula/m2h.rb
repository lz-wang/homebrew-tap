class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.0/m2h_0.24.0_darwin_arm64.tar.gz"
      sha256 "8b10320385ea2333bf646e79d19703cd6316ac2b224fe1c4e49640dbf0fb8d35"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.0/m2h_0.24.0_darwin_amd64.tar.gz"
      sha256 "e396a4f35e6ca23a80a9fa6d3a452f04f0dbe3ce3be46e31a73bc09d6385a052"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.0/m2h_0.24.0_linux_arm64.tar.gz"
      sha256 "23024c3938deded6b8565b350990387b24629c613f27d51952b04373a705552a"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.0/m2h_0.24.0_linux_amd64.tar.gz"
      sha256 "f5849993dc823d8ff05f0ac44c9c885367534aec4b1467a1e430a4a53a2ff99b"
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
