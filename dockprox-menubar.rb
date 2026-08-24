# typed: false
# frozen_string_literal: true

cask "dockprox-menubar" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.0"
  sha256 arm:   "0f33849bed7ab05be9d2df15117128fd1ebbcd30a9ac8cbf6576de4c2213234c",
          intel: "a6d824ccfb38e4da53510cd7c09f8892f1558f53db1c695b98b7f01fd5cb3add"

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
