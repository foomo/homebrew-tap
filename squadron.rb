# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Squadron < Formula
  desc "CLI utility manage infrastructure as code with helm"
  homepage "https://github.com/foomo/squadron"
  version "2.2.0"

  on_macos do
    on_intel do
      url "https://github.com/foomo/squadron/releases/download/v2.2.0/squadron_2.2.0_darwin_amd64.tar.gz"
      sha256 "11e93dfc4590b21aefb6e487f6489d30d88fa55e6fe3138d201dc9775fb23cdc"

      def install
        bin.install "squadron"
      end
    end
    on_arm do
      url "https://github.com/foomo/squadron/releases/download/v2.2.0/squadron_2.2.0_darwin_arm64.tar.gz"
      sha256 "933343d84828ba278ebd7d9b0c3d5c040699e9a738da41a0dd6fd376ee741fdf"

      def install
        bin.install "squadron"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/squadron/releases/download/v2.2.0/squadron_2.2.0_linux_amd64.tar.gz"
        sha256 "d25cb4f23a7f9ad02fe600baae6b0e1c70731c096f220d4aafd416f5a5a98283"

        def install
          bin.install "squadron"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/squadron/releases/download/v2.2.0/squadron_2.2.0_linux_arm64.tar.gz"
        sha256 "6f589e5ae28f2d67e59424542095756311c6d8be4674c4667470fdd15c711784"

        def install
          bin.install "squadron"
        end
      end
    end
  end

  def caveats
    <<~EOS
      squadron -h
    EOS
  end

  test do
    system "#{bin}/squadron --version"
  end
end
