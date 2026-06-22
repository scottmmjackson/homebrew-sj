# typed: false
# frozen_string_literal: true

class Bbpr2md < Formula
  desc "Bitbucket Pull Request to Markdown CLI tool."
  homepage "https://github.com/scottmmjackson/bbpr2md"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.8/bbpr2md-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "e003dc09c5bf463246947202cb680b750a33852197c4a5de5416e01851d2f888"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.8/bbpr2md-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "f81f4e059d557d90edb9f5d6acafb9d99bda391439386d813f31705d9d76488a"

      def install
        bin.install "bbpr2md"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.8/bbpr2md-0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b8c5176ca75a46032a4d31e4465208632f9b172acd796cf0da927d82554b6bb"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.8/bbpr2md-0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f866b8c1a4d51ae40d9d33f68d7e8304642d9ca1ef1ed5e777f94194ccc14a7"

      def install
        bin.install "bbpr2md"
      end
    end
  end

  test do
    system "#{bin}/bbpr2md --version"
  end
end
