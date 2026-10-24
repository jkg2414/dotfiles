# dotfiles

## Export (machine → repo)
Run from the root of this repo to copy the current configs into it:
```
cp ~/.zshrc ~/.vimrc ~/.gitconfig .
cp ~/.config/karabiner/karabiner.json .
cp ~/Library/Application\ Support/Code/User/{settings,keybindings}.json .
cp ~/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings .
# iTerm (app settings and all profiles)
defaults export com.googlecode.iterm2 com.googlecode.iterm2.plist
plutil -convert xml1 com.googlecode.iterm2.plist
```

## Import (repo → machine)
Run from the root of this repo. Quit iTerm first and run this from Terminal.app, otherwise iTerm overwrites the imported settings when it quits:
```
cp .zshrc .vimrc .gitconfig ~
mkdir -p ~/.config/karabiner && cp karabiner.json ~/.config/karabiner/
mkdir -p ~/Library/Application\ Support/Code/User && cp settings.json keybindings.json ~/Library/Application\ Support/Code/User/
mkdir -p ~/Library/Application\ Support/Sublime\ Text/Packages/User && cp Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User/
defaults import com.googlecode.iterm2 com.googlecode.iterm2.plist
```

## Setup
Run the following in addition to importing the config files above:
```
# Disable accents pop-up and enable key repeats
defaults write -g ApplePressAndHoldEnabled -bool false
# No animations for new windows
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
# Gray out hidden icons in dock
defaults write com.apple.dock showhidden -bool true
# No delay for showing dock during mouse hover
defaults write com.apple.dock autohide-delay -float 0
# No animation for showing/hiding dock
defaults write com.apple.dock autohide-time-modifier -float 0
# Change where screenshots are saved
defaults write com.apple.screencapture location ~/Pictures/Screenshots
# To add option to disable developer searches in Spotlight
touch /Applications/Xcode.app

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install vim git fzf python3

ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code
```


* iTerm

See personal GitHub repos for these projects and download their releases:
* AltTab
* Flycut
* Rectangle
