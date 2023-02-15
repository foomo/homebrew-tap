# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Posh < Formula
  desc "Project Oriented SHELL"
  homepage "https://github.com/foomo/posh"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/posh/releases/download/v0.3.0/posh_0.3.0_darwin_amd64.tar.gz"
      sha256 "0a3a237d86424f4064d8ff25f2f50b53cddb3b091e102d605c987e1812dd960a"

      def install
        bin.install "posh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/foomo/posh/releases/download/v0.3.0/posh_0.3.0_darwin_arm64.tar.gz"
      sha256 "644b85b95a89b58580695904d800238f54157761052d7df12d14636a55e83f6a"

      def install
        bin.install "posh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/foomo/posh/releases/download/v0.3.0/posh_0.3.0_linux_arm64.tar.gz"
      sha256 "1442334c5c4214e84a6fd9ab17d039738bf501c7d2f86f9be8ed48837c78df42"

      def install
        bin.install "posh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/foomo/posh/releases/download/v0.3.0/posh_0.3.0_linux_amd64.tar.gz"
      sha256 "5920710d5111525dcf6aff6f222fbe2799d63499ff917c572d1a979b7b73a99f"

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
