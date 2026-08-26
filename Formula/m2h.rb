class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.12.0/m2h_0.12.0_darwin_arm64.tar.gz"
      sha256 "ba04d0f98a6d312c33aca35f9adaa40330fce961729d4d11a4755fb7a4950c0d"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.12.0/m2h_0.12.0_darwin_amd64.tar.gz"
      sha256 "191044899e843850e0c53477c0d7e6c19ac4fa46b251d55271cd7c1769a027ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.12.0/m2h_0.12.0_linux_arm64.tar.gz"
      sha256 "1b541047bfc2c7f51c85ee0e449bedd1243a2b569b9d677b977993a42bad58f1"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.12.0/m2h_0.12.0_linux_amd64.tar.gz"
      sha256 "d94b18141273a39ce88eaeb6aa5361518668346a2248d7cc34e1d93cce686cf8"
    end
  end

  def install
    bin.install "m2h"
  end

  test do
    (testpath/"example.md").write "# m2h\n"
    system bin/"m2h", "convert", "example.md"
    assert_path_exists testpath/"example.html"
    assert_match "<h1", (testpath/"example.html").read
  end
end
