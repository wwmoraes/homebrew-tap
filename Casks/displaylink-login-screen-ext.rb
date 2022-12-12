# https://www.synaptics.com/sites/default/files/exe_files/2021-02/macOS%20App%20LoginExtension-EXE.dmg
cask "displaylink-login-screen-ext" do
  version "1.8"
  sha256 "67f653f331e2e4d182325ded51a00701879d5f9af3da025684f2889777f6d597"

  url "https://www.synaptics.com/sites/default/files/exe_files/2021-02/macOS%20App%20LoginExtension-EXE.dmg"
  name "DisplayLink Login Screen Extension"
  desc "Enables external screens connected through DisplayLink to be available on login screen"
  homepage "https://support.displaylink.com/knowledgebase/articles/1932214-displaylink-manager-app-for-macos-introduction-in#other"

  pkg "DisplayLinkLoginScreenExtension.pkg"

  uninstall pkgutil: [
              "com.displaylink.uninstaller",
              "com.displaylink.displaylinkloginscreenext",
            ]
end
