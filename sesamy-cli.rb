# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SesamyCli < Formula
  desc "CLI utitlity to manage Server Side Tag Management"
  homepage "https://github.com/foomo/sesamy-cli"
  version "0.20.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.20.2/sesamy-cli_0.20.2_darwin_amd64.tar.gz"
      sha256 "4bfb0ead0596e85f4c392fddc6387c93794d649d7c2a856321880d174ed82891"

      def install
        bin.install "sesamy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.20.2/sesamy-cli_0.20.2_darwin_arm64.tar.gz"
      sha256 "7ae5e3233da89a914c959e87b63b9cb7adea502593be406d000905871fb3f260"

      def install
        bin.install "sesamy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.20.2/sesamy-cli_0.20.2_linux_amd64.tar.gz"
        sha256 "5f92305062fdf1bccce2f792ba4f4c2d5a7caced539b846e78a4e9ab7ad45cda"

        def install
          bin.install "sesamy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.20.2/sesamy-cli_0.20.2_linux_arm64.tar.gz"
        sha256 "5b3c30195076217ed5ba9dce04bc02ddaba59d5b27cde733b7e1a416de52fc20"

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
