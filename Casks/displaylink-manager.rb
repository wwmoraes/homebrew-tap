cask "displaylink-manager" do
  version "1.8"
  sha256 "8cd7e7aeb393a707019a7222ce73f2abf2f662e8d1c00f5176b1f3b32ac7fb13"

  url "https://www.synaptics.com/sites/default/files/exe_files/2022-10/DisplayLink%20Manager%20Graphics%20Connectivity#{version}-EXE.pkg"
  name "DisplayLink Manager"
  desc "Enables DisplayLink docks, adapters and monitors"
  homepage "https://www.synaptics.com/products/displaylink-graphics"

  pkg "DisplayLink Manager Graphics Connectivity#{version}-EXE.pkg"

  uninstall quit: "com.displaylink.DisplayLinkUserAgent",
            launchctl: [
              "com.displaylink.DisplayLinkLoginHelper",
            ],
            pkgutil:   [
              "com.displaylink.displaylinkmanagerapp",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.displaylink.DisplayLink*",
    "~/Library/Containers/com.displaylink.DisplayLink*",
    "~/Library/Group Containers/73YQY62QM3.com.displaylink.DisplayLink*",
  ]
end
