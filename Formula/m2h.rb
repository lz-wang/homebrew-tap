class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.14.0/m2h_0.14.0_darwin_arm64.tar.gz"
      sha256 "d5b76fe8ec9f59fc8ef877b5e1d95c0f3f7c801f7189371b632d253cbda66698"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.14.0/m2h_0.14.0_darwin_amd64.tar.gz"
      sha256 "cf178bd57dc29dc3bf4c250185d08c9199bb44c9f0a011d2ff43dbaeb2f0110f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.14.0/m2h_0.14.0_linux_arm64.tar.gz"
      sha256 "e1aba2d61fb3386518bda0fe1dad3c250300fa27cb185be070f609ae8412df34"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.14.0/m2h_0.14.0_linux_amd64.tar.gz"
      sha256 "1d27765a3e0655333a7a2329369a1e4ed5b6f50b2a217d4c54acdb730634d724"
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
