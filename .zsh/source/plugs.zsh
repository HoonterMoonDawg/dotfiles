# source "$zd/repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
export NVM_DIR="$HOME/.config/nvm"
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
source $HOME/repos/nvm/zsh-nvm.plugin.zsh
source $HOME/.dotbare/dotbare.plugin.zsh
source $HOME/.zsh/repos/evalcache/evalcache.plugin.zsh
_evalcache thefuck --alias
source "$zdpl/formarks/formarks.plugin.zsh"
source "$zdpl/zaw/zaw.zsh"
source "$zdpl/zsh-autopair/autopair.zsh"
source $zd/repos/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
