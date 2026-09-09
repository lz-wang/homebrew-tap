class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.19.1/m2h_0.19.1_darwin_arm64.tar.gz"
      sha256 "f22af5c3b934b6b3695ab897890107529a7ddb8df3483bd39fd0b0aa2b5c0a6f"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.19.1/m2h_0.19.1_darwin_amd64.tar.gz"
      sha256 "bbb4bd80b05094653b0150c585926b60a5bca5c1e38c55e86fecad5281731a4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.19.1/m2h_0.19.1_linux_arm64.tar.gz"
      sha256 "d7dd29a3e52a1ccb93e994719083461cf8c5ec2944fa72099b70a309fe795d16"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.19.1/m2h_0.19.1_linux_amd64.tar.gz"
      sha256 "6b9cc6e6a9026b0df1f9b168c6a841c1c2b1e1427e61c020c0e6c4cbc6978fe4"
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
