# typed: false
# frozen_string_literal: true

class Bbpr2md < Formula
  desc "Bitbucket Pull Request to Markdown CLI tool."
  homepage "https://github.com/scottmmjackson/bbpr2md"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.7/bbpr2md-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "e604c032ef7d5b456c4a0f62c80a92abc43d090877b6b9056f5acea05fbac45f"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.7/bbpr2md-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "f996553743fb5d94a0aae2a15bf716b6020dcce4e035a778f727ff31f1d0bef3"

      def install
        bin.install "bbpr2md"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.7/bbpr2md-0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b794ac2019c0be85074200a072e915c0e69a3cb3c88b04d8849285e6943c6fb"

      def install
        bin.install "bbpr2md"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpr2md/releases/download/0.1.7/bbpr2md-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f716f37a65506ec15faa5a15187e4efe58d5c5be75c78dbaf68d1b1a24d315b"

      def install
        bin.install "bbpr2md"
      end
    end
  end

  test do
    system "#{bin}/bbpr2md --version"
  end
end
