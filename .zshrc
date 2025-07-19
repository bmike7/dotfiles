# To add completions (suggested by rustup completions --help)
fpath+=~/.zfunc

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

# pretty logging of git commits
alias glop="git log --oneline --graph --pretty=format:\"%C(yellow)%h%Creset %Cblue%cn%Creset %s %Cred%cr%Creset %C(yellow)%d%C(reset)\""

# Set up shell environment for Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Poetry
export PATH="/Users/mike/.local/bin:$PATH"

# Direnv (shell extension for (un)loading env variables depending on directory)
eval "$(direnv hook zsh)"

export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"

# nvm was installed with brew
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# 1password
eval "$(op completion zsh)"; compdef _op op

# nvim
# export PATH="/Users/mike/.nvim-macos/bin:$PATH"
alias vi=nvim

# point to dotenv config
export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PATH:/Users/mikebijl/.spicetify

# custom symlinked scripts
export PATH=$PATH:$HOME/.bin

eval "$(starship init zsh)"
source $XDG_CONFIG_HOME/starship/completions
