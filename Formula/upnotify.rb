# typed: false
# frozen_string_literal: true

class Upnotify < Formula
    desc "Tool to log to standard out when the status of a web service changes."
    homepage "https://github.com/scottmmjackson/upnotify"
    version "0.1.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.0/upnotify-0.1.0-x86_64-apple-darwin.tar.gz"
            sha256 "b3c0d8fe4f84ba00a87199ad410ec5c64ff34f7e6431a330e10b2647a2942b54"

            def install
                bin.install "upnotify"
            end
        end
        if Hardware::CPU.intel?
            url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.0/upnotify-0.1.0-aarch64-apple-darwin.tar.gz"
            sha256 "0fbc79c385d1dbae8b4b1e97245d719e86fd2533de2113cdbcad0d7ca44864fe"

            def install
                bin.install "upnotify"
            end
        end
    end
      on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.0/upnotify-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
            sha256 "025b904db51136be3af43acb4f02e6a399e3a4a5bc2866400a60baf7ca9e327a"

          def install
            bin.install "bb2todotxt"
          end
        end
        if Hardware::CPU.intel?
            url "https://github.com/scottmmjackson/upnotify/releases/download/0.1.0/upnotify-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
            sha256 "7bec7507dc0d99acdd60409dd77ef0c37ec9c9ad23666ae555eaca4d518f2a8d"

          def install
            bin.install "bb2todotxt"
          end
        end
      end

      test do
        system "#{bin}/upnotify --version"
      end
end