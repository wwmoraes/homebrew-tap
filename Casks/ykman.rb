cask "ykman" do
  version "1.2.4"
  sha256 "aae5c51a51fb7bc65fc8347037e2c5cb0e8395502ee1e67f137f65887c81ace6"

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  name "YubiKey Manager"
  desc "configure FIDO2, OTP and PIV functionality on your YubiKey"
  homepage "https://www.yubico.com/support/download/yubikey-manager/"

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall quit: "com.yubico.ykman", pkgutil: "com.yubico.ykman"

  zap trash: [
    "~/Library/Preferences/com.org-yubico.YubiKey Manager.plist",
  ]
end
