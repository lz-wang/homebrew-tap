class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.2/m2h_0.24.2_darwin_arm64.tar.gz"
      sha256 "d06616d9b91b45fddc09afccb511e8baf137fd8ff1b94737dc6bd4c8a440054e"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.2/m2h_0.24.2_darwin_amd64.tar.gz"
      sha256 "1450806330af9e4d52cbd682af5a236f952f52063ae1d884f964e143d136dbc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.2/m2h_0.24.2_linux_arm64.tar.gz"
      sha256 "20e6c53464a96e362c9415c540186817db12e1a8071247861381c8cff95bc2fc"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.24.2/m2h_0.24.2_linux_amd64.tar.gz"
      sha256 "8566be964cbf5b58139c9cf82740769c3ef3cde8b0bb4002b426166090809400"
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
