class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.12.0/m2h_0.12.0_darwin_arm64.tar.gz"
      sha256 "a50c534ab877009e0e0816429355a02022645cc9f8f9ffb23dee9480b00e673e"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.12.0/m2h_0.12.0_darwin_amd64.tar.gz"
      sha256 "6cdf9ffe2853292c522f3b0b949e38e135bcb01c433ead95a7be52b606df7dc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.12.0/m2h_0.12.0_linux_arm64.tar.gz"
      sha256 "e12807f5a052be9221dac38c8e6e411565b6fa2cff9a2de1c610295bccbe7b76"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.12.0/m2h_0.12.0_linux_amd64.tar.gz"
      sha256 "408d7a5ddecc5965747bd91b6ff9009922ea949fd2c5e2e0dd8e4fd6d17ed6af"
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
