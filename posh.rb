# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Posh < Formula
  desc "Project Oriented SHELL"
  homepage "https://github.com/foomo/posh"
  version "0.7.0"

  on_macos do
    on_intel do
      url "https://github.com/foomo/posh/releases/download/v0.7.0/posh_0.7.0_darwin_amd64.tar.gz"
      sha256 "c4488b9cf513414800a920bc4ee1f6f640fa861cd0877dd9a8b1a3592b682905"

      def install
        bin.install "posh"
      end
    end
    on_arm do
      url "https://github.com/foomo/posh/releases/download/v0.7.0/posh_0.7.0_darwin_arm64.tar.gz"
      sha256 "3ffbd6ed45f06f53ba94c36dd9931b7809b7dd9b6e36a075da7a258abb1c0788"

      def install
        bin.install "posh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/posh/releases/download/v0.7.0/posh_0.7.0_linux_amd64.tar.gz"
        sha256 "c20db1cac78e9946be6113c0644c285f3e7e677c746875fdb6ac6ae41a537876"

        def install
          bin.install "posh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/posh/releases/download/v0.7.0/posh_0.7.0_linux_arm64.tar.gz"
        sha256 "a992d7e2df5d6b6d6cf566aa3728c96f8ccb3e6742818746cd04fa7633076fc0"

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
