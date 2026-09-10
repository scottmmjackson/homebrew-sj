# typed: false
# frozen_string_literal: true

class JiraReassign < Formula
  desc "Reassign Jira tickets by role field (reviewer, responsible engineer, etc.)"
  homepage "https://github.com/scottmmjackson/jira-reassign"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.1/jira-reassign-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "fe86b4364f29622d4ee03f283457655bd65179f27947e36c94b7e8c0e71f428c"

      def install
        bin.install "jira-reassign"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.1/jira-reassign-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "5e3b6a23c8c89dabb0321401b8f703cb18435c64bb2aac79de4faf830bdf46a0"

      def install
        bin.install "jira-reassign"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.1/jira-reassign-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64b440f36cf7b84291827efd28d438e94add0a7e54ba759b6bffa4ba9874cb03"

      def install
        bin.install "jira-reassign"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.1/jira-reassign-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1264f1c650fdfd787d8dff40fb85950f7da61ef4425baa51a69c8a10a0d3972"

      def install
        bin.install "jira-reassign"
      end
    end
  end

  test do
    system "#{bin}/jira-reassign --version"
  end
end
