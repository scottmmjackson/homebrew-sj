# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.10/bbpipelinewait-1.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "baa8e7c10d35b746c54b259f97b0e45d42a44e0582c8bb1b35dc8442ad6af073"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.10/bbpipelinewait-1.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "19df5a88e21b208f6c1aff75f6f9fbbc92876a1284a7ab89a1d7d84b0d2f9b4d"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.10/bbpipelinewait-1.0.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "932a3d70c1512dc87e34ac035f1959b811f5955c889c8def7100f26f298a3a0e"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.10/bbpipelinewait-1.0.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "583aadb68d67cdd5e9b22f8f454cccd5dcd2f09ea91f96a2fe1535be235090ff"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end