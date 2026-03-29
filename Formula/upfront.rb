class Upfront < Formula
  desc "Force thinking before code — audit trail for AI-assisted feature definition"
  homepage "https://thinkupfront.dev"
  url "https://github.com/brennhill/upfront/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  license "AGPL-3.0-only"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/upfront/"
  end

  test do
    assert_match "Usage: upfront", shell_output("#{bin}/upfront help")
  end
end
