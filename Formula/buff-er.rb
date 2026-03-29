class BuffEr < Formula
  desc "Get buff while you buffer — exercise nudges during AI wait times"
  homepage "https://github.com/brennhill/buff-er"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/brennhill/buff-er/releases/download/v0.4.0/buff-er-darwin-arm64"
      sha256 "5cd3fdfd395bb4312d1489650059fdfdffeae18c48169aa7552af0ce929f6eec"
    end
    on_intel do
      url "https://github.com/brennhill/buff-er/releases/download/v0.4.0/buff-er-darwin-amd64"
      sha256 "74170610f805daee3737abff4d5a1c688a7fd3a53af290aff3711a5f38023e61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brennhill/buff-er/releases/download/v0.4.0/buff-er-linux-arm64"
      sha256 "d685d2bcdf17590d22456be307033a69c33ba948aab3150160be62ab72655760"
    end
    on_intel do
      url "https://github.com/brennhill/buff-er/releases/download/v0.4.0/buff-er-linux-amd64"
      sha256 "f47efbdae5f379db58cf86d7cb9d954fbc8db5fe8e27c0a11282316b2a057b1f"
    end
  end

  def install
    bin.install Dir["buff-er-*"].first => "buff-er"
  end

  test do
    assert_match "buff-er", shell_output("#{bin}/buff-er --version")
  end
end
