# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Posh < Formula
  desc "Project Oriented SHELL"
  homepage "https://github.com/foomo/posh"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/posh/releases/download/v0.12.0/posh_0.12.0_darwin_amd64.tar.gz"
      sha256 "7e0fce252709881bcea51daf2886bcbe4a5f45ab4ecd80dd0e1fb1a30a16497a"

      def install
        bin.install "posh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/foomo/posh/releases/download/v0.12.0/posh_0.12.0_darwin_arm64.tar.gz"
      sha256 "07a7a3e139736e4092f80aff0a11dce7e13bde63ff49145f70b46960a32fe3a0"

      def install
        bin.install "posh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/posh/releases/download/v0.12.0/posh_0.12.0_linux_amd64.tar.gz"
        sha256 "250911dc39c557a3c62505da103b9622dbc03f4777dc3ccf67ba04b8d9fbd780"

        def install
          bin.install "posh"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/posh/releases/download/v0.12.0/posh_0.12.0_linux_arm64.tar.gz"
        sha256 "4c2a9a3f03875140ba9dee2090129889b853b476332b784b0452b1b3f910af63"

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
