# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.2/bbpipelinewait-1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "a1af9e54a68729804ed8c649c6348dc8c0f2e93ca701e911d60e96cbb4c26c8e"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.2/bbpipelinewait-1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "9b557226d4a50109ead7b18dfc748f5399116f4328a412d30a3e0954934de653"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.2/bbpipelinewait-1.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9606097e35ab1e858eb98be9f5d8ad1374390e7d75d4cff37a7da78740e2274f"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.2/bbpipelinewait-1.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9809c1d920c9fd81cbdc982933fa32a330cb10c7490007b8879e1c7e23dd016"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end