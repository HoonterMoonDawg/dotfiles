export EDITOR="nvim"
export HISTFILE="$zd/.zsh_history"
export SAVEHIST=5000
export HISTSIZE=2000
export GOROOT=$HOME/.local/share/golang
export GOPATH=$HOME/Code/go
export CARGO_HOME=$HOME/.local/share/cargo/bin
export RUSTUP_HOME=$HOME/.local/share/rustup
export DOTBARE_DIR="$HOME/dotfiles"
export zdpl=$zd/repos
export zsrc=$zd/source


path+=(
    $HOME/.bin
    $HOME/.local/bin
    $HOME/.local/share/cargo/bin/bin
    $GOPATH/bin
    $HOME/.config/nvm/bin
    $HOME/.config/nvm/versions/node/v12.18.2/bin/node
)

