# if status --is-login; and not set -q __fish_login_config_sourced
#     set -x __fish_login_config_sourced 1
# end
if status is-interactive
    set -xg EDITOR nvim
    set -xg SHELL /opt/homebrew/bin/fish
    set -xg MANPAGER 'nvim +Man!'
    set -xg LC_ALL en_US.UTF-8
    set -xg LC_CTYPE en_US.UTF-8
    set -xg PYENV_ROOT $HOME/.pyenv

    set -xg HOMEBREW_AUTO_UPDATE_SECS 86400
    set -xg HOMEBREW_NO_COLOR 1
    set -xg HOMEBREW_NO_EMOJI 1

    fish_add_path ~/bin ~/go/bin ~/.cargo/bin ~/.local/bin /opt/homebrew/bin /usr/local/opt/libpq/bin

    # https://github.com/pyenv/pyenv/issues/32
    pyenv init - fish | source
    starship init fish | source
    op completion fish | source

    alias vim nvim

    abbr l 'ls -lh'
    abbr chmox 'chmod +x'
    abbr pr pull-request
    abbr o origin
    abbr gl 'git log'
    abbr gg 'git log --graph --oneline --branches --tags'
    abbr ggg 'git log --graph --oneline --branches --tags --remotes'
    abbr gh 'git show HEAD'
    abbr gs 'git status'
    abbr gd 'git diff'
    abbr gD 'git diff --staged'
    abbr ga 'git add'
    abbr gap 'git add --patch'
    abbr gc 'git checkout'
    abbr gC 'git commit'
    abbr gCa 'git commit --amend'
    abbr gCan 'git commit --amend --no-edit'
    abbr gM 'git merge'
    abbr gf 'git fetch --all --prune'
    abbr gr 'git rebase --rebase-merges @{u}'
    abbr gp 'git pull'
    abbr gP 'git push'
    abbr gPu 'git push -u origin HEAD'
    abbr gPf 'git push --force-with-lease'

    set fish_greeting
end
