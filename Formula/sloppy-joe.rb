class SloppyJoe < Formula
  desc "Detect hallucinated, typosquatted, and non-canonical dependencies"
  homepage "https://github.com/brennhill/sloppy-joe"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/brennhill/sloppy-joe/releases/download/v0.10.0/sloppy-joe-aarch64-apple-darwin.tar.xz"
      sha256 "675ea14148a3029738b433d7e9815f7231f2c8635ba5c98d6e9bee61ee36888d"
    end
    on_intel do
      url "https://github.com/brennhill/sloppy-joe/releases/download/v0.10.0/sloppy-joe-x86_64-apple-darwin.tar.xz"
      sha256 "758d93fbbba86f1cc0fae57da283450e6af3b8323f4212793fcf6cfd5745dc08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brennhill/sloppy-joe/releases/download/v0.10.0/sloppy-joe-aarch64-unknown-linux-musl.tar.xz"
      sha256 "80b2b3c1a6d0af0faf3fd1631e70594c1099b03e48dc8b3bb320b7ae68371aca"
    end
    on_intel do
      url "https://github.com/brennhill/sloppy-joe/releases/download/v0.10.0/sloppy-joe-x86_64-unknown-linux-musl.tar.xz"
      sha256 "09cb7b5ef41fa365a3a1a0e8a975a7abe24371a3aba210f37962f4f5cb8df6dd"
    end
  end

  def install
    bin.install "sloppy-joe"
  end

  test do
    assert_match "sloppy-joe", shell_output("#{bin}/sloppy-joe --version")
  end
end
