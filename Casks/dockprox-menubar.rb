# typed: false
# frozen_string_literal: true

cask "dockprox-menubar" do
  arch arm: "arm64", intel: "amd64"

  version "0.12.0"
  sha256 arm:   "592bc098a79284947f8d311cf80cf2534181905b20ae15a6de7fb541559f9b0e",
          intel: "8458d4dafac280fb9e083d4e88ba82b000b00d47bf3e10a0677df23f2763f83b"

  url "https://github.com/foomo/dockprox/releases/download/v#{version}/dockprox-menubar_#{version}_darwin_#{arch}.zip"
  name "dockprox"
  desc "Menu bar app for dockprox, an inverse HTTP(S) proxy with SOCKS5 support"
  homepage "https://github.com/foomo/dockprox"

  depends_on macos: :big_sur

  app "Dockprox.app"

  zap trash: [
    "~/Library/Preferences/com.foomo.dockprox.plist",
  ]
end
