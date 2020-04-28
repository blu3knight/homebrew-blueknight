cask 'synology-drive-client' do
  version '11061'
  sha256 '99d1dd5d6fd36c18e75fce0b038d3d2c3c5ad2132f95ca835450d052ab841634'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/2.0.1-#{version}/Mac/Installer/synology-drive-client-#{version}.dmg"
  appcast 'https://archive.synology.com/download/Tools/SynologyDriveClient/'
  name 'Synology Drive Client'
  homepage 'https://www.synology.com/en-us/releaseNote/SynologyDriveClient'

  depends_on macos: '>= :el_capitan'

  pkg 'Install Synology Drive Client.pkg'

  zap trash: [
              '~/Library/Preferences/com.synology.CloudStationUI.plist',
              '/var/db/receipts/com.synology.CloudStation.bom',
              '/var/db/receipts/com.synology.CloudStation.plist',
             ]


end
