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

