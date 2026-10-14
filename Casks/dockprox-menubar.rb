# typed: false
# frozen_string_literal: true

cask "dockprox-menubar" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.1"
  sha256 arm:   "bba9ae5ff138ecc7d9e0582c040143f9c1c4b4374301bdd7a1e4f0d3861d3a68",
          intel: "a339023699601545fed231cb62372e4b6239aff5bd23c9b71948c8022af5fdde"

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
