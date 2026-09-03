class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.16.1/m2h_0.16.1_darwin_arm64.tar.gz"
      sha256 "927e01273cb7a4dc1914b7fcc0faf36d0ad004cfbaad37ae85a95f67acc6836b"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.16.1/m2h_0.16.1_darwin_amd64.tar.gz"
      sha256 "1126d2c96072a4af860c5a2869f2031a41279c8c8d61c9ea5e99d56d77ec2fe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.16.1/m2h_0.16.1_linux_arm64.tar.gz"
      sha256 "651e5565df5e120fbf3e8e36cbb466478e792fe74ae5df65234a391c368cd96e"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.16.1/m2h_0.16.1_linux_amd64.tar.gz"
      sha256 "e3fb7be427f27c723dab74c6152d1112e98532d4ace6f5cbfb14f55b3f8a0fc5"
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
