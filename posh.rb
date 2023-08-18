# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Posh < Formula
  desc "Project Oriented SHELL"
  homepage "https://github.com/foomo/posh"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foomo/posh/releases/download/v0.4.5/posh_0.4.5_darwin_arm64.tar.gz"
      sha256 "434b4e99a67d9ce95d491033bd9a153be31b1b32887d6a2221db1367affa28d7"

      def install
        bin.install "posh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/foomo/posh/releases/download/v0.4.5/posh_0.4.5_darwin_amd64.tar.gz"
      sha256 "4ce4d0e446e4ab9e60300a1482f2491c9707464ecf38ac439a55bc6dae858aba"

      def install
        bin.install "posh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/posh/releases/download/v0.4.5/posh_0.4.5_linux_amd64.tar.gz"
      sha256 "3b765534a7a22194f0c1bf93cf6b9740e0da93bc668980ac11de6dfd4f138aeb"

      def install
        bin.install "posh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/foomo/posh/releases/download/v0.4.5/posh_0.4.5_linux_arm64.tar.gz"
      sha256 "b4eeaaf9ec9b611153ba70bd74161deb4b73852f016ea317f6d0fac125d7fa59"

      def install
        bin.install "posh"
      end
    end
  end

  def caveats
    <<~EOS
      posh help
    EOS
  end
end
