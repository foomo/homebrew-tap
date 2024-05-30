# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SesamyCli < Formula
  desc "CLI utitlity to manage Server Side Tag Management"
  homepage "https://github.com/foomo/sesamy-cli"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.2.0/sesamy-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "12d4842cac899c8fdd096a2a8dea7e1a8e354f31f53e76112a13914dea18e47d"

      def install
        bin.install "sesamy"
      end
    end
    on_arm do
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.2.0/sesamy-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "e44e746eb1545ad1a15cf3ef0737b867fba436bdc4989d19f3bdd5eec7d1558e"

      def install
        bin.install "sesamy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.2.0/sesamy-cli_0.2.0_linux_amd64.tar.gz"
        sha256 "05d7182d12e5c70f33b7636727428b5dd764fe992de3072b4905c238430855f4"

        def install
          bin.install "sesamy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.2.0/sesamy-cli_0.2.0_linux_arm64.tar.gz"
        sha256 "7822f801ad437b9b34903a6ff2648d3c5c166bb94053205608ad4d1081bfa203"

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
