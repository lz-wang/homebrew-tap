class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.4/m2h_0.29.4_darwin_arm64.tar.gz"
      sha256 "de272be522c4ada46bea7e20198441343a3f4ae0e0c05e5b435d766cf5a66561"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.4/m2h_0.29.4_darwin_amd64.tar.gz"
      sha256 "3c92960fafdb466bc74da780c75deb1c59972e59fc83fd25097a90272038a452"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.4/m2h_0.29.4_linux_arm64.tar.gz"
      sha256 "68ca924e5fe28fdaf7757d9ce2fa81172d2091ecb1ebbc32ae3721827b63b913"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.29.4/m2h_0.29.4_linux_amd64.tar.gz"
      sha256 "96eee8e7390600576704d4aa950d7137fe31f2f6aa89e9213be1293849ac9d92"
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
