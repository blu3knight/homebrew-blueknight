cask "synology-drive-client" do
  version "3.0.1,12664"
  sha256 "2fd2ad2d5ee1de87531e016931dae14c14f44febd33992c156f14c0295dd2485"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.before_comma}-#{version.after_comma}/Mac/Installer/synology-drive-client--#{version.after_comma}.dmg"
  appcast "https://archive.synology.com/download/Tools/SynologyDriveClient/"
  name "Synology Drive Client"
  homepage "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"

  depends_on macos: '>= :el_capitan'

  pkg "Install Synology Drive Client.pkg"

  uninstall pkgutil: "/Applications/Synology Drive Client.app/Contents/SharedSupport/Remove Synology Drive Client.app"

end
