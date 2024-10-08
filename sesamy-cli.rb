# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SesamyCli < Formula
  desc "CLI utitlity to manage Server Side Tag Management"
  homepage "https://github.com/foomo/sesamy-cli"
  version "0.5.0"

  on_macos do
    on_intel do
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.5.0/sesamy-cli_0.5.0_darwin_amd64.tar.gz"
      sha256 "d694502ebf1e0c125a7f8de8dac527f45b3bde1dfda8185e989e6025ea7e2305"

      def install
        bin.install "sesamy"
      end
    end
    on_arm do
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.5.0/sesamy-cli_0.5.0_darwin_arm64.tar.gz"
      sha256 "d89f78acd334df724bd110930936677a2066ab4a6b45e3e08ad8eb928149a6ac"

      def install
        bin.install "sesamy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.5.0/sesamy-cli_0.5.0_linux_amd64.tar.gz"
        sha256 "adc301aada40c21559d7679cae9c3736572ea79af68bc0ea1b8cd6e9998c2ac6"

        def install
          bin.install "sesamy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.5.0/sesamy-cli_0.5.0_linux_arm64.tar.gz"
        sha256 "097abe202a76ec34d1e3b00a1ab772c0fbc24396e25be1b280270d449aa9a66d"

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
