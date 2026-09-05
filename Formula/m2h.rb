class M2h < Formula
  desc "Convert and preview Markdown"
  homepage "https://github.com/lz-wang/m2h"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.2/m2h_0.17.2_darwin_arm64.tar.gz"
      sha256 "cb26f97edbdc5b0cd3953ef2b5ef8199980cd2b4d49605262aba8bc7b87a37f9"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.2/m2h_0.17.2_darwin_amd64.tar.gz"
      sha256 "9efa97eddeaf99a3ef78da0b8c5a3477d77befcbbaf7dcd91f200870c4639917"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.2/m2h_0.17.2_linux_arm64.tar.gz"
      sha256 "87b86811a8a542ab1578ac9bb1196e914f3bdcdaf77136595d736fa915a49083"
    end

    on_intel do
      url "https://github.com/lz-wang/m2h/releases/download/v0.17.2/m2h_0.17.2_linux_amd64.tar.gz"
      sha256 "8ea0e603ebe6209d9abd396b00a5a6bce28b5d2b5fedd21600281ff3e234108b"
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
