# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Posh < Formula
  desc "Project Oriented SHELL"
  homepage "https://github.com/foomo/posh"
  version "0.5.9"

  on_macos do
    on_intel do
      url "https://github.com/foomo/posh/releases/download/v0.5.9/posh_0.5.9_darwin_amd64.tar.gz"
      sha256 "1cfc2c02207e097eedbb4ab07a5d4664fd91a3903aab70411925fd62c98322d0"

      def install
        bin.install "posh"
      end
    end
    on_arm do
      url "https://github.com/foomo/posh/releases/download/v0.5.9/posh_0.5.9_darwin_arm64.tar.gz"
      sha256 "fdea530074d56b72afd946a344bdda91f6cb0504794ef9cac7954ecff47707e4"

      def install
        bin.install "posh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/posh/releases/download/v0.5.9/posh_0.5.9_linux_amd64.tar.gz"
        sha256 "85575ef72afd572bacbd4ded62673e211959d82555689fca5d98bd521b205b07"

        def install
          bin.install "posh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/posh/releases/download/v0.5.9/posh_0.5.9_linux_arm64.tar.gz"
        sha256 "72dbbea42c3b8993928d212899cc39bdc69ad4027e30de1d005242359f2bbe94"

        def install
          bin.install "posh"
        end
      end
    end
  end

  def caveats
    <<~EOS
      posh help
    EOS
  end
end
