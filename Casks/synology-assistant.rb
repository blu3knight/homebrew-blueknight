cask "synology-assistant" do
  version "7.0-50029"
  sha256 "1c7c913b056b855ed07bce5e6dafc23b1ea154b1a7fc06ec800affc1cc235ff5"

  url "https://global.download.synology.com/download/Utility/Assistant/#{version}/Mac/synology-assistant-#{version}.dmg"
  appcast "https://archive.synology.com/download/Tools/Assistant/"
  name "Synology Assistant"
  homepage "https://www.synology.com/en-global/knowledgebase/DSM/help/Assistant/assistant"

  app "SynologyAssistant.app"

  zap trash: '~/Library/Saved Application State/com.yourcompany.DSAssistant.savedState'
 
end
