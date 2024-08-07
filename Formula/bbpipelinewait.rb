# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.8/bbpipelinewait-1.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "c51bd7e1a36186324dd1daefbfe93d6f47cb7426d61fec2c208588fcc894428b"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.8/bbpipelinewait-1.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "de30400c8795c85fdd4792346c78f67d90181fedccd62296d8678f2711abb86f"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.8/bbpipelinewait-1.0.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eba9a30e4e1c8672d23e0fadd95d0187911a73e4f56b39358ae9a0b9910c13ec"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.8/bbpipelinewait-1.0.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75551771c5f2864270829d4058d4fd96390505f1b02e9f0d89ade454b7674825"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end