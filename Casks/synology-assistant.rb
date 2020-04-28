cask 'synology-assistant' do
  version '6.2-24922'
  sha256 'b586a41cf390586bdc29ab4d6ee7abbca2e435c74426b194997f35553f1ef7ae'

  url "https://global.download.synology.com/download/Tools/Assistant/#{version}/Mac/synology-assistant-#{version}.dmg"
  appcast 'https://archive.synology.com/download/Tools/Assistant/'
  name 'Synology Assistant'
  homepage 'https://www.synology.com/en-global/knowledgebase/DSM/help/Assistant/assistant'

  app 'SynologyAssistant.app'

  zap trash: '~/Library/Saved Application State/com.yourcompany.DSAssistant.savedState'
 
end
