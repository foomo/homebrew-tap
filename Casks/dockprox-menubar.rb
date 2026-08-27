# typed: false
# frozen_string_literal: true

cask "dockprox-menubar" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.0"
  sha256 arm:   "3c1d927a758e9297ac49f016713ed43c25629973cc44bd99387f5cda3ab33c27",
          intel: "43095a321be5cc1383a3e9fb33d6e2560297dcdc16ba372a7bc038de96024cac"

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
