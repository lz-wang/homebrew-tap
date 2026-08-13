class M2h < Formula
  desc "Convert and preview GitHub-flavored Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.3/m2h_0.9.3_darwin_arm64.tar.gz"
      sha256 "8f9cd32e49015d957219038d42151b0239489cf8c641f360aee197d2bf03e4ad"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.3/m2h_0.9.3_darwin_amd64.tar.gz"
      sha256 "c9f97d47b0f44243d37c9b0da75008e4911b53a0a2a995ebdfcc210845530fde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.3/m2h_0.9.3_linux_arm64.tar.gz"
      sha256 "af96eddaa1ae89ae2d3613ddad4c59cca3aaa3bc11c0dcd4d09f058cb01d33f5"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.3/m2h_0.9.3_linux_amd64.tar.gz"
      sha256 "00f3e770aeb9dc7cb47e5213a08ab54660186be8aaad153abbbd68117eb57dfc"
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
