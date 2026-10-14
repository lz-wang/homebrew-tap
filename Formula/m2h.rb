class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.23.0/m2h_0.23.0_darwin_arm64.tar.gz"
      sha256 "dbf24bac52208fdf7e09d059cd447295d0e6909943c849b668b7b50b88619da6"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.23.0/m2h_0.23.0_darwin_amd64.tar.gz"
      sha256 "5114c0ccadc570c248778345167616739211f57cecdf2a9042d91e636fe29d10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.23.0/m2h_0.23.0_linux_arm64.tar.gz"
      sha256 "c199c4ee0385d45361781e4d19ee961d1cd3707b998cfb04239b0dc799a1263d"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.23.0/m2h_0.23.0_linux_amd64.tar.gz"
      sha256 "a2ac582c7ce22499f7e9f47aa07082f8c2e16aa3d9f5235f0499f3464234d13f"
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
