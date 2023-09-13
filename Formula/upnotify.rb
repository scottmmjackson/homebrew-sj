# typed: false
# frozen_string_literal: true

class Upnotify < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/upnotify"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.2/upnotify-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "230dc8e7428a1847533adf902a25616d256dbc8ea549672f1b371f71f76eef34"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.2/upnotify-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "1500292628ad035ee7ac87ac92f6727baa57335c756edc6a8249d269d54c8107"

      def install
        bin.install "upnotify"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.2/upnotify-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3d7d8d7db2f2b984fa1d026403d2940926b2b79e1783584698c1bcff64ce4b0"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.2/upnotify-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35b8900db15049925ed23828e483dba732f35089c2291a33d77b4aeda0bb61c6"

      def install
        bin.install "upnotify"
      end
    end
  end

  test do
    system "#{bin}/upnotify --version"
  end
end