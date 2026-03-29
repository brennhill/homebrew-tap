class Upfront < Formula
  desc "Force thinking before code — audit trail for AI-assisted feature definition"
  homepage "https://thinkupfront.dev"
  version "0.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/brennhill/Upfront/releases/download/v0.1.0/upfront_0.1.0_darwin_arm64.tar.gz"
      sha256 "badca86d03b6c97f65736a21ec74dcfe236b09d592b7d07756e058f881c6d7a1"
    end
    on_intel do
      url "https://github.com/brennhill/Upfront/releases/download/v0.1.0/upfront_0.1.0_darwin_amd64.tar.gz"
      sha256 "52601da66c055a692bad134ee277f51c3873f2052f4365b7ef9076acb978b126"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brennhill/Upfront/releases/download/v0.1.0/upfront_0.1.0_linux_arm64.tar.gz"
      sha256 "5a5109a811dd3d2fdf6bcab47ab0d6fe8566c59a91fb6c3c65235f102fd52baf"
    end
    on_intel do
      url "https://github.com/brennhill/Upfront/releases/download/v0.1.0/upfront_0.1.0_linux_amd64.tar.gz"
      sha256 "58ea93eab776142b46fa2a338ad726e1803d21eb2b81492155189abfd3012311"
    end
  end

  def install
    bin.install "upfront"
  end

  test do
    assert_match "Usage: upfront", shell_output("#{bin}/upfront help")
  end
end
