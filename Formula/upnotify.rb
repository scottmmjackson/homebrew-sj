# typed: false
# frozen_string_literal: true

class Upnotify < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/upnotify"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.4/upnotify-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "070a03800e4d3f99bb362730dfbfc1d691764166d37d5df97d83191c89f52e29"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.4/upnotify-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "e3172b8aafcbf4ea475b3bac63d40cfd3ed344f65dcb256cc6597c66197953ea"

      def install
        bin.install "upnotify"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.4/upnotify-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f0f314baa2dc49636788d459b201ecfe355397c895e11205bb775b22ce46d31"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.4/upnotify-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50a11d25a04e213272d63b288651d65589850de340511d47507bce7f47b2ff8b"

      def install
        bin.install "upnotify"
      end
    end
  end

  test do
    system "#{bin}/upnotify --version"
  end
end