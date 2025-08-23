# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dutis < Formula
  desc "A cmd util to manage default app on macOS, inspired by duti"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/archive/v2.0.0.tar.gz"
  sha256 "163e558603fd3e1293c55d7cd8d9e674ce52ea8e2861a280c8467a8d2c6e6a63"
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
