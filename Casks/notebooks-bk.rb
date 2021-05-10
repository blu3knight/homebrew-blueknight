cask 'notebooks-bk' do
  version '1.4.5'
  sha256 '4bcf8f705cf1911b2b907e188eb0ae22168c3c15cd9384935a6823a3665a73b2'

#  url 'https://notebooksapp.com/Download/Notebooks.zip'
  url "https://binhost.yuryweb.com/homebrew/Notebooks-#{version}.dmg"
  appcast 'https://www.notebooksapp.com/NBMacAppcast.xml'
  name 'Notebooks'
  homepage 'https://www.notebooksapp.com/mac/'

  app 'Notebooks.app'
end
