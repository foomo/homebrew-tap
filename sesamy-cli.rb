# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SesamyCli < Formula
  desc "CLI utitlity to manage Server Side Tag Management"
  homepage "https://github.com/foomo/sesamy-cli"
  version "0.20.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.20.1/sesamy-cli_0.20.1_darwin_amd64.tar.gz"
      sha256 "fed494c71504148b2a2f33b2e738028115bb35c4e37167d4016f398a37bbb0a9"

      def install
        bin.install "sesamy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.20.1/sesamy-cli_0.20.1_darwin_arm64.tar.gz"
      sha256 "567f6a485b4bd9ff46c68c216dc9f3b3ba58627c4c080c94fb8aeb533132fcfa"

      def install
        bin.install "sesamy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.20.1/sesamy-cli_0.20.1_linux_amd64.tar.gz"
        sha256 "3ad4e7dab6d588fd097359da611f3d95329f8642294f01ecbe3045b211c70370"

        def install
          bin.install "sesamy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.20.1/sesamy-cli_0.20.1_linux_arm64.tar.gz"
        sha256 "581ba107b2d66368ea9fa2360f40870e7015df200810b590e6c7980a9fb5579c"

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
