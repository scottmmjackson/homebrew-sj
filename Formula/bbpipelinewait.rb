# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.9/bbpipelinewait-1.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "cea138981934d5da8601ab5cb4d995e56321aa0fd60f51fc955c6289c956eb31"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.9/bbpipelinewait-1.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "d1219ac87f4aff185b8f3658507df6e29c16c00139ca00d9b30d9d6ea8c5a5db"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.9/bbpipelinewait-1.0.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e814be76cde6b28240f0867f9c23657bb2bf9983def511f60838101a24e06b4"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.9/bbpipelinewait-1.0.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "322e73107c1d83a5f87f11c95346d28116b61838e585b8da3bb434291236c1bf"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end