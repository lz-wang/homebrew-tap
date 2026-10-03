class MediaCenter < Formula
  desc "Local media library server with a WebUI and Jellyfin-compatible API"
  homepage "https://github.com/lz-wang/homebrew-tap"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/media-center-v0.1.0/media-center_0.1.0_darwin_arm64.tar.gz"
      sha256 "ca523e305ebf5eeef47971a8c57c1ad32a076a495fe3444002e06417c9b2015b"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/media-center-v0.1.0/media-center_0.1.0_darwin_amd64.tar.gz"
      sha256 "305cb1ccc19d306a189037e964968266fd434cc8fab192fd2aa3050aa2356ee3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/media-center-v0.1.0/media-center_0.1.0_linux_arm64.tar.gz"
      sha256 "7d22ccbb836f5853421da7b9b5888dd4dfe0dabb567f4e5750d7f8e0531dcd5d"
    end

    on_intel do
      url "https://github.com/lz-wang/homebrew-tap/releases/download/media-center-v0.1.0/media-center_0.1.0_linux_amd64.tar.gz"
      sha256 "ecff8799b880c198dfe64194b521f0b5a9523484e0d0965c7ad51fd7d2163102"
    end
  end

  def install
    bin.install "media-center"
  end

  test do
    cp bin/"media-center", testpath/"media-center"
    assert_match version.to_s, shell_output("./media-center version")
  end
end
