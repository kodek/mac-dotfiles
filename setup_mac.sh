echo Do not run directly! Only use as reference.

exit 1

# TODO: Provide actual VIM settings.
echo "imap jk <Esc>" >> ~/.vimrc

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install fzf
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

# Mac App Store installer
brew install mas

# Sign in to App store (use UI)
## TODO: Re-enable once this functionality is fixed.
# mas signin xxx@xxx.com

# 1Password
mas install 1333542190

# Telegram
mas install 747648890

# Things 3
mas install 904280696

CASKS=(
  google-chrome
  iterm2
  steermouse
  bettertouchtool
  divvy
)

brew install --cask ${CASKS[@]}

# TODO: Add iTerm settings
# TODO: Add SteerMouse settings
# TODO: Automatically import BetterTouchTool settings

# Settings
defaults write -g ApplePressAndHoldEnabled -bool false
# Fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Disable smooth scrolling
defaults write -g NSScrollAnimationEnabled -bool false

