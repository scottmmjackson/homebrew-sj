# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.1/bbpipelinewait-1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "1a9ca526ed2bd4ac87fb241957b8319281cac8761dded63946be28d6ef06491c"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.1/bbpipelinewait-1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "41aa80e3b428a7b2b81cc7da7a42b45c62eafa0cd2d0fef1dc2949d9b4dc3e11"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.1/bbpipelinewait-1.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d29c84271db312caad18d88f269632a75fcc690b9e0c4441a01a34a4ddb3e97"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.1/bbpipelinewait-1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2fbdb4b465e3acac0acf8db4a0c790658c4d976f9731e017d7c01b4452dca80"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end