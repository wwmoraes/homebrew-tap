cask "automatic-mouse-mover" do
  version "1.2.0"
  sha256 "61b509e5c7e2bc7cb4a2db2077cbc0ffb822cd92a4528bf7e9791e2e7bdb97ec"

  url "https://github.com/prashantgupta24/automatic-mouse-mover/releases/download/v#{version}/amm.app.zip"
  name "Automatic Mouse Mover"
  desc "Moves your mouse pointer at regular intervals so that your machine is kept awake"
  homepage "https://github.com/prashantgupta24/automatic-mouse-mover"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "amm.app"
end
