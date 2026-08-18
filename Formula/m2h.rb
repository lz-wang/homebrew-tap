class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.7/m2h_0.9.7_darwin_arm64.tar.gz"
      sha256 "4ce8ab71ae89b0e9153da20e20004f29656b7a0a809f817024abf280205b7616"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.7/m2h_0.9.7_darwin_amd64.tar.gz"
      sha256 "2768e18cc5d5357576ea7843df132609c2565cb38d94e6a5ac407ec9b2eb17d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.7/m2h_0.9.7_linux_arm64.tar.gz"
      sha256 "8f05054e04d25e3f8441b82d9d5c5f84bd545b3d7bda2e266a3d0477687cffd1"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.7/m2h_0.9.7_linux_amd64.tar.gz"
      sha256 "747e7006503ad3b6e5f0e170b37321c1b9f6f6f0eb3a4fc8837b83763cb7c55d"
    end
  end

  def install
    bin.install "m2h"
  end

  test do
    (testpath/"example.md").write "# m2h\n"
    system bin/"m2h", "--yes", "example.md"
    assert_path_exists testpath/"example.html"
    assert_match "<h1", (testpath/"example.html").read
  end
end
