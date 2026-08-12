class M2h < Formula
  desc "Convert and preview GitHub-flavored Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.0/m2h_0.9.0_darwin_arm64.tar.gz"
      sha256 "486f0c46ae4226e2ba1ca274d0283185a3a323ef4a947a8c63d7e7b37ab49f16"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.0/m2h_0.9.0_darwin_amd64.tar.gz"
      sha256 "e4cc9cdcaf0d39d27f79d7315e3c08b0d23181353e61db3dcdf8202b0db96970"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.0/m2h_0.9.0_linux_arm64.tar.gz"
      sha256 "b97e79e003d0edd9851e038771dd2bccc38719428c3c5b4affe654e8ba4a5bb5"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.9.0/m2h_0.9.0_linux_amd64.tar.gz"
      sha256 "5db5d41fc43009c2113ec9ddf56d6940af9b52ecee213ec337c9fc5c06913614"
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
