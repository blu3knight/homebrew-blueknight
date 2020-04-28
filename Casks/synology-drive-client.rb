cask 'synology-drive-client' do
  version '2.0.2-11076,11076'
  sha256 '946e712f410b66333b62d6feef0f52991f69fe000ec12be967651b3adcf3ef4c'

  url "https://global.download.synology.com/download/Tools/SynologyDriveClient/#{version}/Mac/Installer/synology-drive-client-#{version.after_comma}.dmg"
  appcast 'https://archive.synology.com/download/Tools/SynologyDriveClient/'
  name 'Synology Drive Client'
  homepage 'https://www.synology.com/en-us/releaseNote/SynologyDriveClient'

  depends_on macos: '>= :el_capitan'

  app 'Synology Drive Client.app'

  zap trash: [
              '~/Library/Preferences/com.synology.CloudStationUI.plist',
              '/var/db/receipts/com.synology.CloudStation.bom',
              '/var/db/receipts/com.synology.CloudStation.plist',
             ]


end
