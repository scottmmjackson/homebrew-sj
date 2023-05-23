# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bb2todotxt < Formula
  desc "Converts pull request tasks from bitbucket to todo txt tasks"
  homepage "https://github.com/scottmmjackson/bb2todotxt"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bb2todotxt/releases/download/v0.0.4/bb2todotxt_Darwin_x86_64.tar.gz"
      sha256 "460911be747229074b97c17daff0084452729e12f87de0d626367cb2ff57f15f"

      def install
        bin.install "bb2todotxt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/scottmmjackson/bb2todotxt/releases/download/v0.0.4/bb2todotxt_Darwin_arm64.tar.gz"
      sha256 "66c9dac408d7c3c20ee089615ff713ba37151023fc90f93b39bd9310f786b03c"

      def install
        bin.install "bb2todotxt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/scottmmjackson/bb2todotxt/releases/download/v0.0.4/bb2todotxt_Linux_arm64.tar.gz"
      sha256 "169d4d255dcdc1570c75b4d6b3715bc9be84305fdaf21eed5b66ebc7a3dae25d"

      def install
        bin.install "bb2todotxt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/scottmmjackson/bb2todotxt/releases/download/v0.0.4/bb2todotxt_Linux_x86_64.tar.gz"
      sha256 "d8ae93c80095a4c7bc54be954c6933712d04accc4f950f2f1e92e77b83915037"

      def install
        bin.install "bb2todotxt"
      end
    end
  end

  test do
    system "#{bin}/bb2todotxt -v"
  end
end
