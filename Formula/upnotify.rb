# typed: false
# frozen_string_literal: true

class Upnotify < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/upnotify"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.1/upnotify-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "ca1f5d172fba9095ada9ec21d83a8653e200ce665640b7ab4974ba7b699342af"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.1/upnotify-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9b8b4a8d1aa6b470d6391e08447bd2e0547e7948db0b5d76ec8c1b1ff942a043"

      def install
        bin.install "upnotify"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.1/upnotify-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c0c138d2976e49524f9f8247a6809256746168323b1badf850594f2dcbb83b1"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.1/upnotify-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1faee699a8b5216722ce60989ca3b2590ad577e0b04f2aa2bc28be484b066a2a"

      def install
        bin.install "upnotify"
      end
    end
  end

  test do
    system "#{bin}/upnotify --version"
  end
end