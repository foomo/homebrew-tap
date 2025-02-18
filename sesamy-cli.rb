# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SesamyCli < Formula
  desc "CLI utitlity to manage Server Side Tag Management"
  homepage "https://github.com/foomo/sesamy-cli"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.12.0/sesamy-cli_0.12.0_darwin_amd64.tar.gz"
      sha256 "532670b5bbcd93dd42e8c05162f496d2a5e88f00b98fc6b3a058ea1400bff293"

      def install
        bin.install "sesamy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.12.0/sesamy-cli_0.12.0_darwin_arm64.tar.gz"
      sha256 "a0b707f11be2ae703d63a54f158a6ddba01ea474368d0e20154555fe77c9d54e"

      def install
        bin.install "sesamy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.12.0/sesamy-cli_0.12.0_linux_amd64.tar.gz"
        sha256 "fc70d162aad669bc5e68790622f48632fb4731092874d0d66952440f1526b291"

        def install
          bin.install "sesamy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.12.0/sesamy-cli_0.12.0_linux_arm64.tar.gz"
        sha256 "a633ec4db39b56ac574d0747473496d2509d1b420c89473f22c193c98f335824"

        def install
          bin.install "sesamy"
        end
      end
    end
  end

  def caveats
    <<~EOS
      sesamy --help
    EOS
  end
end
