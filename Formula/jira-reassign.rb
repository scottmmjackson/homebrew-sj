# typed: false
# frozen_string_literal: true

class JiraReassign < Formula
  desc "Reassign Jira tickets by role field (reviewer, responsible engineer, etc.)"
  homepage "https://github.com/scottmmjackson/jira-reassign"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.0/jira-reassign-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "f6b7db2fc99e954410aa1eba3483fdaf95aa67016b01b436d316a2f6e7b402fa"

      def install
        bin.install "jira-reassign"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.0/jira-reassign-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "20d828047d6af62b923fd68e0fca4b825f7e8691542fb821299b37968745a9cd"

      def install
        bin.install "jira-reassign"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.0/jira-reassign-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39d61073dc6545c48ddc9c556b6f337eee8c9408b8f7bb623afadbf5c4214a34"

      def install
        bin.install "jira-reassign"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.0/jira-reassign-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81d3168f1c20e4d34387ca2af683c8ca6204126808920c24703de6a9e9ec4a75"

      def install
        bin.install "jira-reassign"
      end
    end
  end

  test do
    system "#{bin}/jira-reassign --version"
  end
end
