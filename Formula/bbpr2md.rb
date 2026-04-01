# typed: false
# frozen_string_literal: true

class Bbpr2md < Formula
  desc "Bitbucket Pull Request to Markdown CLI tool."
  homepage "https://github.com/scottmmjackson/bbpr2md"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.5/bbpr2md-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "54b40e683bbb5146aa2f3ccf4479b0e8b9103cac124d1dca016b9b8fec9478cb"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.5/bbpr2md-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "94909be667f40cc36e68eb3d70b931b0a87d441d83332e39c0e64146201dcec4"

      def install
        bin.install "bbpr2md"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.5/bbpr2md-0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c5680d27f4e96d9e3047e6ebe16b8a6162abb5de13f3c9daddc3d2a6abdf52f"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.5/bbpr2md-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f112bc71c3b97342fba509d06ac82887694c2d7abfc7551988be6bdd0fc2cbd6"

      def install
        bin.install "bbpr2md"
      end
    end
  end

  test do
    system "#{bin}/bbpr2md --version"
  end
end
