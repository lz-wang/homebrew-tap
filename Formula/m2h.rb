class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.20.0/m2h_0.20.0_darwin_arm64.tar.gz"
      sha256 "82a792dae5c9f28518a0bc657a7cce31675ca90bb5ee45ee266d77693bea7149"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.20.0/m2h_0.20.0_darwin_amd64.tar.gz"
      sha256 "008542b772f84cd1c979b59336859ed25ba1d3ce5e3b8ee7e904c598eab44704"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.20.0/m2h_0.20.0_linux_arm64.tar.gz"
      sha256 "85999cb3757cf4070c03d0c4201fbde66347349f4aa1bdd9ad11cdc1cdc8ceb6"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.20.0/m2h_0.20.0_linux_amd64.tar.gz"
      sha256 "bd7164722add74f4458bf173b9733d328ed6ccb65f93ccb6788c9fea062fd751"
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
