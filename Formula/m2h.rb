class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.5/m2h_0.29.5_darwin_arm64.tar.gz"
      sha256 "a722f7adb33775b2cc509940af69d84b1b65ece7f00d774648d12812c073cc43"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.5/m2h_0.29.5_darwin_amd64.tar.gz"
      sha256 "6541e49c054345e632fe9429f2e19f3e77c62256d38f0ce76ebb0a6c1c2fd312"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.5/m2h_0.29.5_linux_arm64.tar.gz"
      sha256 "d39dc2c3996afd0056d7424e3e23fe0a75906d43a9c9679f24cc9da13d256a06"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.5/m2h_0.29.5_linux_amd64.tar.gz"
      sha256 "be924cc0b1557f35b13d84238d2f22008f7bd360338fbd6a73da7e06a0ab2849"
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
