cask "synergy" do
  arch = Hardware::CPU.intel? ? "_x86-64" : "-arm64"

  version "1.14.3,218fa800"

  if Hardware::CPU.intel?
    sha256 "1247917397174014840f5c24b583ec76c6a7c456c0bd6065ad2337334ff84667"
  else
    sha256 "7b0b8f202da8be7ba33dec86db1fce004be029a56f20759388349c480a934b26"
  end

  url "https://binaries.symless.com/synergy/v#{version.csv.first.major}-core-standard/#{version.csv.first}-stable.#{version.csv.second}/synergy_#{version.csv.first}-stable.#{version.csv.second}_macos#{arch}.dmg"
  name "Synergy"
  desc "Keyboard and mouse sharing tool - open-source core"
  homepage "https://symless.com/synergy"

  livecheck do
    url "https://github.com/symless/synergy-core"
    strategy :github_latest do |page|
      version = page[%r{href=.*?/tag/v?(\d+(?:\.\d+){,2})(?:\.\d+)*[._-]stable}i, 1]
      commit = page[%r{href=.*?/commit/(\h{8})}i, 1]
      "#{version},#{commit}"
    end
  end

  app "Synergy.app"
end

