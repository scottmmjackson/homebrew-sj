# typed: false
# frozen_string_literal: true

class Bbpr2md < Formula
  desc "Bitbucket Pull Request to Markdown CLI tool."
  homepage "https://github.com/scottmmjackson/bbpr2md"
  version "0.1.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.12/bbpr2md-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "897c4a8a49f6223b11bb7826d984de99355ebf2aecf99719c6e7be20803a9819"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.12/bbpr2md-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "1d137dd33f42ba2af39bb017ed805f16e60283c661fc82a4fae6d6e8f2cdc487"

      def install
        bin.install "bbpr2md"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.12/bbpr2md-0.1.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0527722db5b5cbef182feacd8baaa627bc206487f5457c514d27da68cd9c137f"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.12/bbpr2md-0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "389e203af9fe14aff87923caceda250661f5167acb5771e2ecc747a4c4b39042"

      def install
        bin.install "bbpr2md"
      end
    end
  end

  test do
    system "#{bin}/bbpr2md --version"
  end
end
