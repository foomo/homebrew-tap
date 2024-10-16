# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ownbrew < Formula
  desc "Your local project package manager"
  homepage "https://github.com/foomo/ownbrew"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/foomo/ownbrew/releases/download/v0.1.0/ownbrew_0.1.0_darwin_amd64.tar.gz"
      sha256 "60b483cc3a9b4a9382225e977445b03d5c3e610a1dbc4899530ad1f9909b0547"

      def install
        bin.install "ownbrew"
      end
    end
    on_arm do
      url "https://github.com/foomo/ownbrew/releases/download/v0.1.0/ownbrew_0.1.0_darwin_arm64.tar.gz"
      sha256 "c4893bd3caa82e5859d2eeb15d59eb3dd509a161756fe0a46d060fb7d577201d"

      def install
        bin.install "ownbrew"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/ownbrew/releases/download/v0.1.0/ownbrew_0.1.0_linux_amd64.tar.gz"
        sha256 "5960b783ff3d28833de852e41a7f40dc65652ccbfd22224f7650a59fc18bbaf3"

        def install
          bin.install "ownbrew"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/ownbrew/releases/download/v0.1.0/ownbrew_0.1.0_linux_arm64.tar.gz"
        sha256 "8295da21c8e7931f8965699ec56ea2b6e991c76a4728e53229683fe18a2fcac5"

        def install
          bin.install "ownbrew"
        end
      end
    end
  end

  def caveats
    <<~EOS
      ownbrew --help
    EOS
  end
end
