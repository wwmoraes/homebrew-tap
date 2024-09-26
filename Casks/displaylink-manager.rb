cask "displaylink-manager" do
  version "1.10.3"
  sha256 "f4e8c36b6278db22bbf2c286490acd5c2d323b07e4d4e9870c6e0ff9017372d9"

  url "https://www.synaptics.com/sites/default/files/exe_files/2024-08/DisplayLink%20Manager%20Graphics%20Connectivity#{version}-EXE.pkg"
  name "DisplayLink Manager"
  desc "Enables DisplayLink docks, adapters and monitors"
  homepage "https://www.synaptics.com/products/displaylink-graphics"

  pkg "DisplayLink Manager Graphics Connectivity#{version}-EXE.pkg"

  uninstall quit:      "com.displaylink.DisplayLinkUserAgent",
            launchctl: "com.displaylink.DisplayLinkLoginHelper",
            pkgutil:   "com.displaylink.displaylinkmanagerapp"

  zap trash: [
    "~/Library/Application Scripts/com.displaylink.DisplayLink*",
    "~/Library/Containers/com.displaylink.DisplayLink*",
    "~/Library/Group Containers/73YQY62QM3.com.displaylink.DisplayLink*",
  ]
end
