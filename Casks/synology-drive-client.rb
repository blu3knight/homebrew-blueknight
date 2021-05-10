cask 'synology-drive-client' do
  version '2.0.4-11112'
  sha256 '19b8f03ece1dc8443da1e6df469d2ddf8916c4d2d15d7c9a04c0e84deb93c33b'

  url "https://binhost.yuryweb.com/homebrew/synology-drive-client-#{version}.dmg"
  appcast 'https://archive.synology.com/download/Tools/SynologyDriveClient/'
  name 'Synology Drive Client'
  homepage 'https://www.synology.com/en-us/releaseNote/SynologyDriveClient'

  depends_on macos: '>= :el_capitan'

  pkg 'Install Synology Drive Client.pkg'

  uninstall pkgutil: "/Applications/Synology Drive Client.app/Contents/SharedSupport/Remove Synology Drive Client.app"

end
