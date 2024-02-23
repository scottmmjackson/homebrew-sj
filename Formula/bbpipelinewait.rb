# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.5/bbpipelinewait-1.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "506a60b1e91a770485a994aceee66e1ed1a4eddaa845e69c3bfe167e14b6a669"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.5/bbpipelinewait-1.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "831c85e2577891ea3c5f46e08c950d6da3450a8166909dfb8d3eb6eff78d533e"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.5/bbpipelinewait-1.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4f066f302437705c93b22c908629592fdf5a19083e60abadee3f35f518a81e7"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.5/bbpipelinewait-1.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "963daad9f94a129c2eb32121317b5c0cbb1a3c823e940697a0ed8d9daad16f0f"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end