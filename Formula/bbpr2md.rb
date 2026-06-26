# typed: false
# frozen_string_literal: true

class Bbpr2md < Formula
  desc "Bitbucket Pull Request to Markdown CLI tool."
  homepage "https://github.com/scottmmjackson/bbpr2md"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.11/bbpr2md-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "2f5ed04157dff4bce4a0f6f9d2ce2663634210097bb2c3d4758adc545e6ccf3b"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.11/bbpr2md-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "692b979db4ba56b7d76a47de64faaaf1217727fb60e83fd3d1d37fcda883deda"

      def install
        bin.install "bbpr2md"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.11/bbpr2md-0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5de9944be725d5ca1c54986766163e0e8feef404f706b5a9a77f95b6540f5ee7"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.11/bbpr2md-0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab022c1a94b2a07d78717c33f3ad4ff81e216fba7ba00d73465b69278524158b"

      def install
        bin.install "bbpr2md"
      end
    end
  end

  test do
    system "#{bin}/bbpr2md --version"
  end
end
