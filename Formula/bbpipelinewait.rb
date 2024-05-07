# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.7/bbpipelinewait-1.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "bbf4e341da0d2687dab159b133fac2113a1a0cee472039185c8737c75151baf5"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.7/bbpipelinewait-1.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "1788cbff6878dd7ed9bf20757cfd7309a95dd340bd0a062dfe4d6545f48ff4a5"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.7/bbpipelinewait-1.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e5fcd52087ded088fbf6bc61514170be7cab5f2e7f4a9acfef9b2e47ec10a5a"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.7/bbpipelinewait-1.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9246fe4a9f5684106248a0edf7c04e373b76a88538c414f264a61f314f21aba"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end