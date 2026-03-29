# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Editor
export EDITOR="code --wait"

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select

# fzf
source <(fzf --zsh)

# Lazy-load nvm for faster shell startup
export NVM_LAZY_LOAD=true

# Sheldon plugin manager
eval "$(sheldon source)"

# History substring search keybindings (must be after sheldon loads the plugin)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Deno
export PATH="$HOME/.deno/bin:$PATH"

# Starship prompt
eval "$(starship init zsh)"
