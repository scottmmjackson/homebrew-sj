# typed: false
# frozen_string_literal: true

class Bbpipelinewait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.6/bbpipelinewait-1.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "d9fb9590cd543913dd35be035ffe710aa937a959f9d5a903cd6031ee64002555"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.6/bbpipelinewait-1.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "4baae0b09688daafe308283efbcd77d9ad851e94c747132e104500065b4a06fd"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.6/bbpipelinewait-1.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a1cf7e21d2c871a368df81ddeaeb930732f92f51e1748174e85b695258ac64c"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.6/bbpipelinewait-1.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52f76debe6b55f02c835807a57d60c12cbbab5052b9ac5a613d93efe158f57e6"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end