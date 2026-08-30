class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.0/m2h_0.15.0_darwin_arm64.tar.gz"
      sha256 "8a7e48cdeada4c0d54534209be885344c2118f9b2dc525d76052c94a8c51edac"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.0/m2h_0.15.0_darwin_amd64.tar.gz"
      sha256 "b5942610d58fb3720d83b94b4558077974cfb9fdb6813b26724d7b80aa13762d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.0/m2h_0.15.0_linux_arm64.tar.gz"
      sha256 "7b5f9c2651d7e06d85bba8215e64d216c9570617206d9a97d0546ae59662b3a6"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.15.0/m2h_0.15.0_linux_amd64.tar.gz"
      sha256 "4e21a699a7f3c98a38aacc6eff2392a989f6ac7119fbe3f4c4d982cb64390eff"
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
