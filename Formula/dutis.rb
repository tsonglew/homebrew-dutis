# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dutis < Formula
  desc "A cmd util to manage default app on macOS, inspired by duti"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/archive/v2.0.0.tar.gz"
  sha256 "35be115c3236a3954251da5a28d9a2d4b82e2e81e68e48f295d7566bef02fd27"
  license "MIT"

  depends_on "rust" => :build
  depends_on "duti"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Test that the binary can run and show help
    system "#{bin}/dutis", "--help"
  end
end
