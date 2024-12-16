# dotfiles

Run the following in addition to moving the config files in this repo to their respective locations:
```
defaults write -g ApplePressAndHoldEnabled -bool false           # Disable accents pop-up and enable key repeats
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false # No animations for new windows
defaults write com.apple.dock showhidden -bool true              # Gray out hidden icons in dock
defaults write com.apple.dock autohide-delay -float 0            # No delay for showing dock during mouse hover
defaults write com.apple.dock autohide-time-modifier -float 0    # No animation for showing/hiding dock
defaults write com.apple.screencapture location ~/<FILL-IN>/     # Change where screenshots are saved
touch /Applications/Xcode.app                                    # To add option to disable developer searches in Spotlight

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install vim git fzf python3

ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code
```

Also it might be worth looking into exporting settings for the following:
* AltTab
* Flycut
* Rectangle
* iTerm
* JetBrains products
