# typed: false
# frozen_string_literal: true

class Upnotify < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/upnotify"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.0/upnotify-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5ddd5ebcb131425c72ecdc4dfbe025bb8da6c11174f00f95797e2f2e19559db7"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.0/upnotify-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "5d72732f7c9cb626d8ca218b29083c87616152fe3078b169c78dc9327c94868c"

      def install
        bin.install "upnotify"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.0/upnotify-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f770698700d96635e623f7778d8d698d52b8808f2838c14887f5dcfd7acf9ea0"

      def install
        bin.install "upnotify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.0/upnotify-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efef38903f30e080aad6d3348cfce716eb291d666a0b0b3c88ed269a5db73ff6"

      def install
        bin.install "upnotify"
      end
    end
  end

  test do
    system "#{bin}/upnotify --version"
  end
end