# typed: false
# frozen_string_literal: true

class Bbpr2md < Formula
  desc "Bitbucket Pull Request to Markdown CLI tool."
  homepage "https://github.com/scottmmjackson/bbpr2md"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.3/bbpr2md-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "7be5ec2cd4d41fee7b9e24d86ab38bf46402dcb379be284a57c0b6e93555abf3"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.3/bbpr2md-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "92d6537c2ed06b241ddc05c76fee6eed1aadcc3f821ca6f2672924c39fd65905"

      def install
        bin.install "bbpr2md"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.3/bbpr2md-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cfee490e1fdf0e7ac636d8aaf94cd65b656f574f2a2a644aa9950784dd4beb67"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.3/bbpr2md-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7b9cba1ef1d51d0ed5af476c5d9b520e13b082f1452ae8b529cef7f2cf1a301"

      def install
        bin.install "bbpr2md"
      end
    end
  end

  test do
    system "#{bin}/bbpr2md --version"
  end
end
