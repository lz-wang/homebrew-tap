class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.11.0/m2h_0.11.0_darwin_arm64.tar.gz"
      sha256 "4f7e1febfa582cdc91869916f12a33c01171c0e3643e7e2d367f862ebab5ac34"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.11.0/m2h_0.11.0_darwin_amd64.tar.gz"
      sha256 "c75f37d1ad91c54e473936b40ad5cb02789a8265982cd26bb15bcf889820ec29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.11.0/m2h_0.11.0_linux_arm64.tar.gz"
      sha256 "7cf458717636e1b639b7ac919c68ef5dd5d8cc64523cdcdae207ca0f6c1a45b4"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.11.0/m2h_0.11.0_linux_amd64.tar.gz"
      sha256 "f110bbbeac22ed82c8bbc17bdfd0d463754a5d9a231a24a4bc593f19eaa84f2b"
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
