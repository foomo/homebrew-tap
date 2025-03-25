# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Squadron < Formula
  desc "CLI utility manage infrastructure as code with helm"
  homepage "https://github.com/foomo/squadron"
  version "2.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/squadron/releases/download/v2.6.0/squadron_2.6.0_darwin_amd64.tar.gz"
      sha256 "22746db161f2d6b367dcf14aed09c9322245c488276a06e1e4682d80e9c4b8ff"

      def install
        bin.install "squadron"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/foomo/squadron/releases/download/v2.6.0/squadron_2.6.0_darwin_arm64.tar.gz"
      sha256 "a94dd41f99426b86f8a931e92575f9baea41a009865ae9a5f565355a6dcf09ab"

      def install
        bin.install "squadron"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/squadron/releases/download/v2.6.0/squadron_2.6.0_linux_amd64.tar.gz"
        sha256 "ce5fc4a7515dfa83451e352105088c7ed5665108beb811f720cb69869c431005"

        def install
          bin.install "squadron"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/squadron/releases/download/v2.6.0/squadron_2.6.0_linux_arm64.tar.gz"
        sha256 "3891168c64948bd7d4b8d5725e44a91a8f31749eba6f609393e73c811168d9d0"

        def install
          bin.install "squadron"
        end
      end
    end
  end

  def caveats
    <<~EOS
      squadron -h
    EOS
  end

  test do
    system "#{bin}/squadron --version"
  end
end
