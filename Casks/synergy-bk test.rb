cask "synergy-bk-test" do
  arch = Hardware::CPU.intel? ? "_x86-64" : "-arm64"

  version "1.14.0,67d824b8"

  if Hardware::CPU.intel?
    sha256 "b52b0ca4e861a644cdfc66e48c0eea4d914e9a0df4b98887a4c7d9bf18253d26"
  else
    sha256 "6238c6894a56b5e977e5a81e4333a074f02ec299eb6e6f3e79a365b495e1faf3"
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

