# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SesamyCli < Formula
  desc "CLI utitlity to manage Server Side Tag Management"
  homepage "https://github.com/foomo/sesamy-cli"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.16.0/sesamy-cli_0.16.0_darwin_amd64.tar.gz"
      sha256 "1bd6b844282572c528136eed70ce047067c7a8523a764dac6732e6638dd7aeed"

      def install
        bin.install "sesamy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/foomo/sesamy-cli/releases/download/v0.16.0/sesamy-cli_0.16.0_darwin_arm64.tar.gz"
      sha256 "84d62175091eafc18b958ca4ae638fcb8bad42b0032e3244013bdb61ba2b3927"

      def install
        bin.install "sesamy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.16.0/sesamy-cli_0.16.0_linux_amd64.tar.gz"
        sha256 "94b58d87344234baa36dee2d2b7f43dfa71c700c7154fbf4691304553ca119d7"

        def install
          bin.install "sesamy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/sesamy-cli/releases/download/v0.16.0/sesamy-cli_0.16.0_linux_arm64.tar.gz"
        sha256 "3641feb94ef394694354d2dee9ba85647cd96c24458c7b3c405589366b31be82"

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
