# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Logfrog < Formula
  desc "CLI utility to tail structured json logs from streams specially featuring stern and docker-compose with support for filtering and transformations of log entries"
  homepage "https://github.com/foomo/logfrog"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/foomo/logfrog/releases/download/v0.3.0/logfrog_0.3.0_darwin_amd64.tar.gz"
      sha256 "bf82378c44cf42edaafad5a70783263e1749410de5c719948f9df11ce027bc2c"

      def install
        bin.install "logfrog"
      end
    end
    on_arm do
      url "https://github.com/foomo/logfrog/releases/download/v0.3.0/logfrog_0.3.0_darwin_arm64.tar.gz"
      sha256 "4a901f1a56c0c4602b1386db4b7441c4b99158687373b8590ba297205d17bb71"

      def install
        bin.install "logfrog"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/logfrog/releases/download/v0.3.0/logfrog_0.3.0_linux_amd64.tar.gz"
        sha256 "520aac1d9686f74bb415fb2125becfe89d386c93ea9fe586101fc4af3377937e"

        def install
          bin.install "logfrog"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/foomo/logfrog/releases/download/v0.3.0/logfrog_0.3.0_linux_arm64.tar.gz"
        sha256 "6555b3ba5d115f6e9eb293da7a82b95f396d90c4b8ae7dec599cd974eb5106ef"

        def install
          bin.install "logfrog"
        end
      end
    end
  end

  def caveats
    <<~EOS
      logfrog --help
    EOS
  end
end