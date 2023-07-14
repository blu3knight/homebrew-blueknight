cask "double-commander-bk" do
  version "1.1.0-10668"
  #sha256 "1859504e33816db8b19e494dedafa97e3cc90accdb15d9b9ee0c1ad2ba6064d1"

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg",
      verified: "downloads.sourceforge.net/doublecmd/"
  name "Double Commander"
  desc "File manager"
  homepage "https://doublecmd.sourceforge.io/"

  app "Double Commander.app"

  caveats do
    discontinued
  end
end
