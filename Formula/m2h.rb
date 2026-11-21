class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.1/m2h_0.29.1_darwin_arm64.tar.gz"
      sha256 "f2e17656527c81c108df0803ef5ee1ba746fb94e4e3ebed7d0289f85c904245a"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.1/m2h_0.29.1_darwin_amd64.tar.gz"
      sha256 "689f3f96d03fdd4ffe1f563ceb4b5d4e60b7ad213fecf2b3ebe435b7bcd2c37c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.1/m2h_0.29.1_linux_arm64.tar.gz"
      sha256 "4ee0dd1c2aa51bcfa3023818c9f3bea67b69edfa77824efaeda894213589b18a"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.1/m2h_0.29.1_linux_amd64.tar.gz"
      sha256 "e1cd0b725b2aa15784d67bc1b9dc89159d76f7e512e91ed9bbb3be7b2415b8de"
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
