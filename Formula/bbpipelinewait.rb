# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.4/bbpipelinewait-1.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "53455effaea045156bc2284172cb98285d857e5a1f55d7cf2814d4fd4a97de9e"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.4/bbpipelinewait-1.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "ab3a5dd8cf9fdbf1f2062e85f2141261f5f8a0be4e41f405153f7e85dba2b392"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.4/bbpipelinewait-1.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7597f3d3d000de1e67ccb18392c58bb4f82dae490d206db66f9f985d7bbf0fa7"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.4/bbpipelinewait-1.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3e739d2ed2bc983c0cc0f7c1b3cbd7a417502d2d6697b70c402ef215b398967"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end