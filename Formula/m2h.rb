class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.27.0/m2h_0.27.0_darwin_arm64.tar.gz"
      sha256 "f72906a07484c742202f18a0ade913d717487723ba802f36dcbf4bb4517a2beb"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.27.0/m2h_0.27.0_darwin_amd64.tar.gz"
      sha256 "dc4577c8545fecaa8cde7325b93f65f55bfbb64800670c94a18d836c949e3adc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.27.0/m2h_0.27.0_linux_arm64.tar.gz"
      sha256 "392d8d31c2037c57f249051fb433c36463d6d7ca6a8074c88675eeaf77b41a66"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.27.0/m2h_0.27.0_linux_amd64.tar.gz"
      sha256 "1be4b4dd8fc5997616b4b2239b99c37cda458c69566bb8b234e4791e8922f2f1"
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
