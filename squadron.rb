# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Squadron < Formula
  desc "CLI utility manage infrastructure as code with helm"
  homepage "https://github.com/foomo/squadron"
  version "2.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/squadron/releases/download/v2.9.0/squadron_2.9.0_darwin_amd64.tar.gz"
      sha256 "e1abc530142a3238b9998240870fcd817c4f91accdafe3249d1f76bef50ffec1"

      def install
        bin.install "squadron"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/foomo/squadron/releases/download/v2.9.0/squadron_2.9.0_darwin_arm64.tar.gz"
      sha256 "89d69f8ec8b716777139dfc4c7797bdb1bd7bf08eee27095542a310905416497"

      def install
        bin.install "squadron"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/foomo/squadron/releases/download/v2.9.0/squadron_2.9.0_linux_amd64.tar.gz"
      sha256 "bc764785c93ed121c68ede4e1fc1ce242075ce3218840ff391a577ad635dd87f"
      def install
        bin.install "squadron"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/foomo/squadron/releases/download/v2.9.0/squadron_2.9.0_linux_arm64.tar.gz"
      sha256 "4472eb97cf0b7262e531faa8ec17bc8bfceb4f4e1eac239b716f450fde222680"
      def install
        bin.install "squadron"
      end
    end
  end

  def caveats
    <<~EOS
      squadron -h
    EOS
  end

  test do
    system "#{bin}/squadron version"
  end
end
