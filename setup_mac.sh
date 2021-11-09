echo "Do not run directly! Only use as reference."

exit 1

# Set git commit settings. You'll need these to update this repo.
# TODO: Automate getting email.
git config --global user.email "you@example.com"
git config --global user.name "`osascript -e "long user name of (system info)"`"

# TODO: Provide actual VIM settings.
echo "imap jk <Esc>" >> ~/.vimrc
echo "imap jk <Esc>" >> ~/.ideavimrc

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install fzf
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

# ZSH Vi Mode
brew install zsh-vi-mode

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
  goland
  visual-studio-code
  istat-menus
)

brew install --cask ${CASKS[@]}

# TODO: Add iTerm settings
# TODO: Add SteerMouse settings
# TODO: Automatically import BetterTouchTool settings

# Settings
defaults write -g ApplePressAndHoldEnabled -bool false
# Fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain IniitalKeyRepeat -int 35

# Disable smooth scrolling
defaults write -g NSScrollAnimationEnabled -bool false

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Configure zsh (See file first!)
cat .zshrc >> ~/.zshrc
