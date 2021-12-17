 cask "vmware-fusion" do
   version "11.5.6-16696540"
   sha256 "f26f8404204af4fcd8932789d849a56e96d0dbeab1a76e35e6a2b42f2f31ffc2"
   url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
   appcast "https://softwareupdate.vmware.com/cds/vmw-desktop/fusion.xml"
