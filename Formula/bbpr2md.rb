# typed: false
# frozen_string_literal: true

class Bbpr2md < Formula
  desc "Bitbucket Pull Request to Markdown CLI tool."
  homepage "https://github.com/scottmmjackson/bbpr2md"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url ""
      sha256 "6ef59c61d5a21ac6829aa7d5c7b2147400ede40172ad3007bf0f323edf6be572"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.arm?
      url ""
      sha256 "3c8c82b0a71f50a4d2967b8e9762e4d1fc4b773eb2d6b00f1b5b38d03b9c7c76"

      def install
        bin.install "bbpr2md"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url ""
      sha256 "961f4fdd9cac51a8bec0ac8e26f9148c0cd220cce1b501187efcf4f6a6b01da6"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.intel?
      url ""
      sha256 "5cef96713c45738d48f6c5771420bd6e218fc7d1c5eda78d530b63d537382516"

      def install
        bin.install "bbpr2md"
      end
    end
  end

  test do
    system "#{bin}/bbpr2md --version"
  end
end
