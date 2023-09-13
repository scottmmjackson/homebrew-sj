# typed: false
# frozen_string_literal: true

class Upnotify < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/upnotify"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.2/upnotify-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "e008f8ee34b027e712a7ad38b9d937f935b303c242494fb2ed2ca12e4692f2a7"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.2/upnotify-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "e3cbc2eed5ebfa09098e5662fe5fbad388a9cc2c198ce1e66f2880eb89a41f21"

      def install
        bin.install "upnotify"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.2/upnotify-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb9190dcdd7b443c94ada4a225e777812177c6cd01cf9473f3579a1e465f5af1"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.2/upnotify-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "716ce01dd846c2afa49006850462355fb334a40dee2dac4aa20855942ea5e909"

      def install
        bin.install "upnotify"
      end
    end
  end

  test do
    system "#{bin}/upnotify --version"
  end
end