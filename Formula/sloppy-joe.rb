class SloppyJoe < Formula
  desc "Shields against supply-chain, slopsquatting, and typosquatting attacks"
  homepage "https://github.com/brennhill/sloppy-joe"
  url "https://github.com/brennhill/sloppy-joe/archive/refs/heads/main.tar.gz"
  version "0.9.1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "sloppy-joe", shell_output("#{bin}/sloppy-joe --version")
  end
end
