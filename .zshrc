# Homebrew autocomplete.
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# VI mode config options go in here
# See https://github.com/jeffreytse/zsh-vi-mode#configuration-function
function zvm_config() {
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
  ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
}

source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Executed after ZSH Vi Mode plugin. See
# https://github.com/jeffreytse/zsh-vi-mode/issues/24
zvm_after_init() {
  # Fuzzy find.
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
}

# Autocomplete like bash (don't cycle through ambiguous options).
setopt noautomenu 

# Generated with https://zsh-prompt-generator.site/
#   user@host ~/current >            Sun 17 12:28PM
PROMPT="%B%F{10}%n%f%b@%m %B%~%b%B > %b"
RPROMPT="%w%t"
