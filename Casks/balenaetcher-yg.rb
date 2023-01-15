cask "balenaetcher-yg" do
  version "3.2.1,13271"
#  sha256 "6db43fd276471a0dd9d7d8d60c719837d5ef9390210ff6147ec40ccaa9bca8aa"
   url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}.dmg"
  name "Balena Etcher"
  homepage "https://www.balena.io/etcher/"

  pkg "Install balenaEtcher.app"

end
