# typed: false
# frozen_string_literal: true

cask "dockprox-menubar" do
  arch arm: "arm64", intel: "amd64"

  version "0.13.0"
  sha256 arm:   "8637497358e3b4585072ec8762f920a20258d2b06dd6feab0d0ac0210cb0c987",
          intel: "a0957426655725e23ff1fc591b8e224ca8e72595691330bc042efce84d3725d1"

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
