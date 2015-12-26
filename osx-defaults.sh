#!/bin/bash

# To set OS X defaults run:
# bash osx-defaults.sh

# Always open everything in Finder's list view:
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder: 
chflags nohidden ~/Library

# Set computer name (as done via System Preferences → Sharing)
#sudo scutil --set ComputerName "0x6D746873"
#sudo scutil --set HostName "0x6D746873"
#sudo scutil --set LocalHostName "0x6D746873"
#sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "0x6D746873"

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Stop iTunes from responding to the keyboard media keys
#launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

