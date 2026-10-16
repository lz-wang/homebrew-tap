class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.1/m2h_0.24.1_darwin_arm64.tar.gz"
      sha256 "54cf72557b8bbcfc955eff4423bd5ae91eb92128b09d87bb0115eb46874487a0"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.1/m2h_0.24.1_darwin_amd64.tar.gz"
      sha256 "16a491d8cb17ff5677a6c1fb0104d0f0484d1570c0d8e571ed75256cea587bcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.1/m2h_0.24.1_linux_arm64.tar.gz"
      sha256 "6fe24daf674c60b5cc36177cd79cad4de45fdd3e71c0dd3c96eb3879c9ee4689"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.1/m2h_0.24.1_linux_amd64.tar.gz"
      sha256 "15b82c3d0f2fe1a3899eaae75dd955b590c0cf87c62812debaba546ba554b48b"
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
