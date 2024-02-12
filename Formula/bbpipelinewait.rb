# typed: false
# frozen_string_literal: true

class BBPipelineWait < Formula
  desc "Tool to log to standard out when the status of a web service changes."
  homepage "https://github.com/scottmmjackson/bbpipelinewait"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.0/bbpipelinewait-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "afa600aca76168beebc79acb8af023a915bbec0d772c6b0416316bb56f20121a"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.0/bbpipelinewait-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "75121acb98dc2e5625ffd9d3eb2e22fc898c492efab6430aefc17e58f1e825a9"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.0/bbpipelinewait-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fe1e763e64da2929b50c9cb73d1c2207902226096a592c49cec2b5d7ef17ea4"

      def install
        bin.install "bbpipelinewait"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bbpipelinewait/releases/download/1.0.0/bbpipelinewait-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88eec19d8d7f1552ca84346808428ce23cc15835b343921c495e2822b84496aa"

      def install
        bin.install "bbpipelinewait"
      end
    end
  end

  test do
    system "#{bin}/bbpipelinewait --version"
  end
end