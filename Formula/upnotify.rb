# typed: false
# frozen_string_literal: true

class Upnotify < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/upnotify"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.3/upnotify-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "a1a2a35a31753fc096f52f760dfdcc5de1fad490a4027ecbac6b9c7a8ec6ad07"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.3/upnotify-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "b0037795117154f021b94d80c4b319b7ca35d46e154c6cc6182368002244ca42"

      def install
        bin.install "upnotify"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.3/upnotify-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "791615bc0b8eaabc3757d468be4219136924afc628f3cb16f512dcb39bff6a39"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.3/upnotify-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef6ffe2612777040e8c29ca22b236e0700f5352f69ad82c86f3ce8938d1d8055"

      def install
        bin.install "upnotify"
      end
    end
  end

  test do
    system "#{bin}/upnotify --version"
  end
end