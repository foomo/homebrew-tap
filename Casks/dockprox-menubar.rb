# typed: false
# frozen_string_literal: true

cask "dockprox-menubar" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.0"
  sha256 arm:   "f1ffae9ab2e51dbe3317f6e1a94b2efbb5646765e32245552e3af83c6b6ec99f",
          intel: "750310cff63ff11510c3912ac5e62457ee78564d9bfcf064e1da8a3365946377"

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
