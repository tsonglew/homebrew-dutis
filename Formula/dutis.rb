# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dutis < Formula
  desc "A cmd util to manage default app on macOS, inspired by duti"
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/archive/v2.1.0.tar.gz"
  sha256 "99c8d2afe94f4c512a0aa117f630940c0e0ee54b768da2fa7c689a909c8028dd"
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
