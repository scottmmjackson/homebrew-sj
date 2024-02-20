# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.3/bbpipelinewait-1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "8deb33c5576e7330c93354a2110cac82200fe8032d51a4d6f803be6f1aaeb9c0"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.3/bbpipelinewait-1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "dfd4356ccc05109d57209612a308087acb025be11c66666e025da113d9aa542f"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.3/bbpipelinewait-1.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2f7cef4abc18617e843f73134a88224f2b949f2550371b1e478aeb76e757275"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.3/bbpipelinewait-1.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "102bb72cffa167afc504a9e32e4b9b16f28657aca64a71775cdf63da306e3693"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end