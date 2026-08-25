# typed: false
# frozen_string_literal: true

cask "dockprox-menubar" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.0"
  sha256 arm:   "b0590fca1b68a2ae80412f89bc330185b73c3166e6012dfd80f221e709c31789",
          intel: "1170fb8d5c6fad3934ffbbfb574a349f17cbd677a9cf71001b17c164f5b5d0a5"

  url "https://github.com/foomo/dockprox/releases/download/v#{version}/dockprox-menubar_#{version}_darwin_#{arch}.zip"
  name "dockprox"
  desc "Menu bar app for dockprox, an inverse HTTP(S) proxy with SOCKS5 support"
  homepage "https://github.com/foomo/dockprox"

  depends_on macos: ">= :big_sur"

  app "dockprox.app"

  zap trash: [
    "~/Library/Preferences/com.foomo.dockprox.plist",
  ]
end
