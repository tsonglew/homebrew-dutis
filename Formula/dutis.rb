# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dutis < Formula
  desc "A cmd util to manage default app on macOS, inspired by duti"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/archive/v2.3.0.tar.gz"
  sha256 "239cde2e07ef8a77564be93d2122848bbc3c77a331e484616176bc67f4c0b1e4"
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
