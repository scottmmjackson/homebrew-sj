# typed: false
# frozen_string_literal: true

class JiraReassign < Formula
  desc "Reassign Jira tickets by role field (reviewer, responsible engineer, etc.)"
  homepage "https://github.com/scottmmjackson/jira-reassign"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.0/jira-reassign-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "7351ecafd9a11d6839d0fbf559b23ca162bd75b80db3e7f6c9a8edea0b276862"

      def install
        bin.install "jira-reassign"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.0/jira-reassign-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e3a5a9e672c4bd176d0e783cd3f482c6a420b7a1a41cfaba7a4ca03ad2a996d0"

      def install
        bin.install "jira-reassign"
      end
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.0/jira-reassign-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b221a9b6e43438dad33197b72464c17b03bd11426d3e1970a5ea87e99d228494"

      def install
        bin.install "jira-reassign"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/jira-reassign/releases/download/0.1.0/jira-reassign-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5b6a0bfbd17ac2323a57363a9a3e30f2dad0c9604092c8ede74b52d1cd13b25"

      def install
        bin.install "jira-reassign"
      end
    end
  end

  test do
    system "#{bin}/jira-reassign --version"
  end
end
