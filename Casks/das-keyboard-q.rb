cask "das-keyboard-q" do
  arch arm: "arm64", intel: "x64"

  version "4.1.3"
  sha256 arm:   "22e2004730467aa36c1ceca35aaf44e31d2b81bfa4fa838e4026c7d30df4f7b8",
         intel: "768c4428edc983fae33bba35ddd7a1217caba3149ddfa68b3a35634ed3a7f6ec"

  url "https://das-keyboard-q-releases.s3.us-east-2.amazonaws.com/das-keyboard-q/darwin/#{arch}/Das+Keyboard+Q-#{version}-#{arch}.dmg", verified: "das-keyboard-q-releases.s3.us-east-2.amazonaws.com/das-keyboard-q/darwin/"
  name "Das Keyboard Q"
  desc "Display Information on Das Keyboard Q RGB Devices"
  homepage "https://www.daskeyboard.io"

  livecheck do
    url "https://www.daskeyboard.io/get-started/software/"
    regex(/href=.*?Das+Keyboard+Q-?(\d+(?:\.\d+)+)-#{arch}\.dmg/i)
  end

  app "Das Keyboard Q.app"

  uninstall quit:    "com.daskeyboard.q",
            pkgutil: "com.daskeyboard.q"

  zap trash: [
    "~/.quio",
    "~/Library/Application Support/das-keyboard-q",
    "~/Library/Preferences/com.daskeyboard.q.plist",
    "~/Library/Saved Application State/com.daskeyboard.q.savedState",
  ]
end
