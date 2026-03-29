class Upfront < Formula
  desc "Force thinking before code — audit trail for AI-assisted feature definition"
  homepage "https://thinkupfront.dev"
  version "0.2.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/brennhill/Upfront/releases/download/v0.2.0/upfront_0.2.0_darwin_arm64.tar.gz"
      sha256 "06e38213c5243f16803296f5b2205db1980efe1852418787de32a2a3bad0f5c1"
    end
    on_intel do
      url "https://github.com/brennhill/Upfront/releases/download/v0.2.0/upfront_0.2.0_darwin_amd64.tar.gz"
      sha256 "a2e3d2ed83dbe9cb83b411ce2b37eed56599155ba58cc2173dde9a5b72a8ae35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brennhill/Upfront/releases/download/v0.2.0/upfront_0.2.0_linux_arm64.tar.gz"
      sha256 "37199d4ecbb4e1e1c49561c635eff952fc770be34874923d2d6b9904f7813446"
    end
    on_intel do
      url "https://github.com/brennhill/Upfront/releases/download/v0.2.0/upfront_0.2.0_linux_amd64.tar.gz"
      sha256 "b6db8589ff786045f5f56df95bcf09373adaef3ebe9a95738dc5ac04fed83325"
    end
  end

  def install
    bin.install "upfront"
  end

  test do
    assert_match "Usage: upfront", shell_output("#{bin}/upfront help")
  end
end
