class SloppyJoe < Formula
  desc "Shields against supply-chain, slopsquatting, and typosquatting attacks"
  homepage "https://github.com/brennhill/sloppy-joe"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/brennhill/sloppy-joe/releases/download/v0.10.0/sloppy-joe-aarch64-apple-darwin.tar.xz"
      sha256 "e63b6431f513797567e39c92a9afd99299bc284c83ed9d7069b38b53f259fa20"
    end
    on_intel do
      url "https://github.com/brennhill/sloppy-joe/releases/download/v0.10.0/sloppy-joe-x86_64-apple-darwin.tar.xz"
      sha256 "392f4b28f231e0ec99406d95ca29dd80ad87c6bf560db0322addf85fe7585446"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brennhill/sloppy-joe/releases/download/v0.10.0/sloppy-joe-aarch64-unknown-linux-musl.tar.xz"
      sha256 "1dbc52372ccc5c06cd0520908150774d512517365623c73aac088f2caf6e592c"
    end
    on_intel do
      url "https://github.com/brennhill/sloppy-joe/releases/download/v0.10.0/sloppy-joe-x86_64-unknown-linux-musl.tar.xz"
      sha256 "efc05860fe2aedbbdec3da4855e4fd78fdc45c862e183a3d1aa6c56fb455997b"
    end
  end

  def install
    bin.install "sloppy-joe"
  end

  test do
    assert_match "sloppy-joe", shell_output("#{bin}/sloppy-joe --version")
  end
end
