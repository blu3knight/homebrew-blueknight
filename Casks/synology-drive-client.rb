cask "synology-drive-client" do
  version "3.2.1,13271"
#  sha256 "b54f9c588457d1cd5d8b9eeace070a3111add4e81136e261fde9a6156217955f"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-drive-client-#{version.after_comma}.dmg"
  appcast "https://archive.synology.com/download/Tools/SynologyDriveClient/"
  name "Synology Drive Client"
  homepage "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"

  depends_on macos: '>= :el_capitan'

  pkg "Install Synology Drive Client.pkg"

  uninstall pkgutil: "/Applications/Synology Drive Client.app/Contents/SharedSupport/Remove Synology Drive Client.app"

end
