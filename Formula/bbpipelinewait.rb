# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.12/bbpipelinewait-1.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "30c0f69cab10c9f12e606d2726680569b9cb113267d5d165e9e7b6511da7dae7"

      def install
        bin.install "bbpipelinewait"
        bin.install "bbpw-ui"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.12/bbpipelinewait-1.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "a2f67a5318575242d2622ec8c6cf3b1efa71e975f7f87f709c8da10c95200474"

      def install
        bin.install "bbpipelinewait"
        bin.install "bbpw-ui"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.12/bbpipelinewait-1.0.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f167626d2e59d489e130b7985db795c91d3c5b37abb9353599932b99e9cf8e5"

      def install
        bin.install "bbpipelinewait"
        bin.install "bbpw-ui"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.12/bbpipelinewait-1.0.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0a04dd570a9c307cacf71885e0865fd18ca52a66d20993845fd73b42afc9f8a"

      def install
        bin.install "bbpipelinewait"
        bin.install "bbpw-ui"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end