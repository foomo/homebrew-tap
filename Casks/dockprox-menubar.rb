# typed: false
# frozen_string_literal: true

cask "dockprox-menubar" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.0"
  sha256 arm:   "251595a06dbf9aacdbf05c5bb352257b8e20a409cbd0cdfb9eafa02ea32a4386",
          intel: "f4f1aaf4d5a3a57caeceae516a5ad9f139fd88f7ab8158fc129c61f6dc0248c0"

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
