# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Posh < Formula
  desc "Project Oriented SHELL"
  homepage "https://github.com/foomo/posh"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/foomo/posh/releases/download/v0.4.3/posh_0.4.3_darwin_arm64.tar.gz"
      sha256 "1c684fe99b5e484ca502032745e9a873e80d5af3635d4ba2f906587ad2b4ac74"

      def install
        bin.install "posh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/foomo/posh/releases/download/v0.4.3/posh_0.4.3_darwin_amd64.tar.gz"
      sha256 "0880babcb699c4eb6d1fedf182c4b35b8d6018460859529c47c29981ad3b9347"

      def install
        bin.install "posh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/posh/releases/download/v0.4.3/posh_0.4.3_linux_amd64.tar.gz"
      sha256 "6f17ccc2da835f3cd26213543861f0b2aa2d97afa99b7cada927029a30903b0a"

      def install
        bin.install "posh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/foomo/posh/releases/download/v0.4.3/posh_0.4.3_linux_arm64.tar.gz"
      sha256 "5f2dd050c5ff022801e4740a8ba8be8d5479fb9f72f648d7f463406bce83b127"

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
