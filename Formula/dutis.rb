# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dutis < Formula
  desc "A cmd util to manage default app on macOS, inspired by duti"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/archive/v2.3.0.tar.gz"
  sha256 "5fa7125e249bb1db843d89c4179e5359e12f9b34dc14697f85b52ba56c5fa7f8"
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
