# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SesamyCli < Formula
  desc "CLI utitlity to manage Server Side Tag Management"
  homepage "https://github.com/foomo/sesamy-cli"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.17.0/sesamy-cli_0.17.0_darwin_amd64.tar.gz"
      sha256 "194e7bfdac7da64427851b99651c720a621dae305c81c8b33f45d85b357896f0"

      def install
        bin.install "sesamy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.17.0/sesamy-cli_0.17.0_darwin_arm64.tar.gz"
      sha256 "8140aadd7304fd9d751c95213ee50f40f461d130d771da283ea0913269ab8631"

      def install
        bin.install "sesamy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.17.0/sesamy-cli_0.17.0_linux_amd64.tar.gz"
        sha256 "76a389ff2ef452e4ababda032b02aac94a80ee8fedcdaeb2c21e146fda8dbe9f"

        def install
          bin.install "sesamy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.17.0/sesamy-cli_0.17.0_linux_arm64.tar.gz"
        sha256 "29a0e892fea0810d000c06d5a102fe432f6e5fc3339794690fc4fe48350a36ce"

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
