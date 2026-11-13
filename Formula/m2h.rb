class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.1/m2h_0.25.1_darwin_arm64.tar.gz"
      sha256 "cc565a1bb03f48b16fddc3445134817171f5c76ccb194fa59caf42895ec893bf"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.1/m2h_0.25.1_darwin_amd64.tar.gz"
      sha256 "13ce84eb91a406c0f0e291777f0c07c68150660ce10a9437b1e17de0b7246a7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.1/m2h_0.25.1_linux_arm64.tar.gz"
      sha256 "9fba3dcf2ce0c5b961f9d02f8c62665ab76237218c6d1a3c8ae09f952e412bea"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.25.1/m2h_0.25.1_linux_amd64.tar.gz"
      sha256 "7d3253aff75af8523c4886c68b0ddd6dcacba6a7711c30c42f8108300cb88bb9"
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
