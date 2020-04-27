#!/bin/bash

# DESCRIPTION
# Configures OS X.

echo "[CONFIG] Enable tabbing between all controls"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
echo ""

echo "[CONFIG] Enable developer mode for admin users"
sudo /usr/sbin/DevToolsSecurity -enable
echo ""

echo "[CONFIG] Disable 'Open application from the web' confirmation prompt"
defaults write com.apple.LaunchServices LSQuarantine -bool false
echo ""

echo "[CONFIG] Disable Time Machine prompt for external disks"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
echo ""

echo "[CONFIG] Default to expanded Print dialogs"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
echo ""

echo "[CONFIG] Default to expanded Save panels"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
echo ""

echo "[CONFIG] Default to using tabs instead of windows"
defaults write NSGlobalDomain AppleWindowTabbingMode -string always
echo ""

echo "[CONFIG]"

echo ""


