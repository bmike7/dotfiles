# To add completions (suggested by rustup completions --help)
fpath+=~/.zfunc

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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

# lazygit
alias lg='lazygit'

# point to dotenv config
export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PATH:/Users/mikebijl/.spicetify

# custom symlinked scripts
export PATH=$PATH:$HOME/.bin

# detect python venv on changing directories
# Thanks: https://dev.to/moniquelive/auto-activate-and-deactivate-python-venv-using-zsh-4dlm
# python_load_venv() {
#     MYVENV=.venv
#     # check if cwd contains $MYVENV
#     [[ -d $MYVENV ]] && source $MYVENV/bin/activate > /dev/null 2>&1
#     [[ ! -d $MYVENV ]] && deactivate > /dev/null 2>&1
# }
# autoload -U add-zsh-hook
# add-zsh-hook chpwd python_load_venv
# python_load_venv

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
