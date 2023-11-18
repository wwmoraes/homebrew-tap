cask "das-keyboard-q" do
  version "3.3.3"
  sha256 "bed11ee909bf1b075c85a7212770bf3246a549b8ec38f248c1bafb3e56590559"

  url "https://download.daskeyboard.com/q-software-releases/#{version}/Das-Keyboard-Q_#{version}.pkg", verified: "download.daskeyboard.com/q-software-releases/"
  name "Das Keyboard Q"
  desc "Display Information on Das Keyboard Q RGB Devices"
  homepage "https://www.daskeyboard.io"

  livecheck do
    url "https://www.daskeyboard.io/get-started/software/"
    regex(/href=.*?Das-Keyboard-Q[_-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  pkg "Das-Keyboard-Q_#{version}.pkg"

  uninstall pkgutil: ["com.daskeyboard.q"]

  zap trash: [
    "~/.quio",
    "~/Library/Application Support/das-keyboard-q",
    "~/Library/Preferences/com.daskeyboard.q.plist",
    "~/Library/Saved Application State/com.daskeyboard.q.savedState",
  ]
end
