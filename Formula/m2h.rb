class M2h < Formula
  desc "Convert and preview GitHub-flavored Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.2/m2h_0.9.2_darwin_arm64.tar.gz"
      sha256 "98b3dde5148098ba956bef792a7d6f57d1636547a44c1a75b14b7036658e90b5"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.2/m2h_0.9.2_darwin_amd64.tar.gz"
      sha256 "dca57b5f1b3df82232664888e261096744a0ca763c7884ccf188e7c375dc8562"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.2/m2h_0.9.2_linux_arm64.tar.gz"
      sha256 "33121e5b7ecf71ad9e3dfd0b67d13d47bdea9b6d0677aa77569a6d3d3babc8f6"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.2/m2h_0.9.2_linux_amd64.tar.gz"
      sha256 "95a7b69b74e55bf94cc2876d153a67f8d764f93dced4abec9d39f2349c798b74"
    end
  end

  def install
    bin.install "m2h"
  end

  test do
    (testpath/"example.md").write "# m2h\n"
    system bin/"m2h", "example.md"
    assert_path_exists testpath/"example.html"
    assert_match "<h1", (testpath/"example.html").read
  end
end
