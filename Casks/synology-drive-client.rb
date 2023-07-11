cask "synology-drive-client" do
  version "3.3.0,15082"
  #sha256 "a0da3fd858a6eb7c625a256e63df50d7c74738f1f275026bec2f6d89bf0b2ce1"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-drive-client-#{version.after_comma}.dmg"
  appcast "https://archive.synology.com/download/Tools/SynologyDriveClient/"
  name "Synology Drive Client"
  homepage "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"

  depends_on macos: '>= :el_capitan'

  pkg "Install Synology Drive Client.pkg"

  uninstall pkgutil: "/Applications/Synology Drive Client.app/Contents/SharedSupport/Remove Synology Drive Client.app"

end
