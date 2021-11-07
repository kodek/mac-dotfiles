# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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
