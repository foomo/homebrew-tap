# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Posh < Formula
  desc "Project Oriented SHELL"
  homepage "https://github.com/foomo/posh"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foomo/posh/releases/download/v0.5.1/posh_0.5.1_darwin_arm64.tar.gz"
      sha256 "98fb00175db81f7dccedf8eac72589987acfd732e8b62f20218c7a6d1a646c48"

      def install
        bin.install "posh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/foomo/posh/releases/download/v0.5.1/posh_0.5.1_darwin_amd64.tar.gz"
      sha256 "dc7e398533b31aebcbd93c52042a205e3c175e5a1098fed52378241f0c3e4e73"

      def install
        bin.install "posh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/foomo/posh/releases/download/v0.5.1/posh_0.5.1_linux_arm64.tar.gz"
      sha256 "739987e7038fbf8eb34a1848a4795e8452fe821371db6f10f9ff344e41187ef7"

      def install
        bin.install "posh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/foomo/posh/releases/download/v0.5.1/posh_0.5.1_linux_amd64.tar.gz"
      sha256 "ffbae90f2c92887e03677f8e4611f6bfd5d90ab03f1eba4e10f873af79cefaeb"

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
