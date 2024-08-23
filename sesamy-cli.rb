# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SesamyCli < Formula
  desc "CLI utitlity to manage Server Side Tag Management"
  homepage "https://github.com/foomo/sesamy-cli"
  version "0.3.2"

  on_macos do
    on_intel do
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.3.2/sesamy-cli_0.3.2_darwin_amd64.tar.gz"
      sha256 "fd2e10c134b1dc9c83699aa5812e5be133e87fb435b8d116ac32d1b921f73121"

      def install
        bin.install "sesamy"
      end
    end
    on_arm do
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.3.2/sesamy-cli_0.3.2_darwin_arm64.tar.gz"
      sha256 "ed4aad9ab4617551c435bb946ce17148b7fdeb88213764d31c6f7427e1475415"

      def install
        bin.install "sesamy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.3.2/sesamy-cli_0.3.2_linux_amd64.tar.gz"
        sha256 "a7c5128d0eb7d090e2500e5feeddb6e91ce4b5c9bf7e0756be51044d3fd17358"

        def install
          bin.install "sesamy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.3.2/sesamy-cli_0.3.2_linux_arm64.tar.gz"
        sha256 "01ed35b3bd6b914fb0a5981e78043777934c651beaf9d77a09652e25b09aea66"

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
