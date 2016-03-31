export PROMPT='%m%~% %b <`git symbolic-ref --short HEAD`> # %b'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export HISTSIZE=100000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
export EDITOR="vim"
bindkey -v
bindkey "^B" beginning-of-line
bindkey "^E" end-of-line

setopt prompt_subst
setopt auto_pushd
setopt AUTOCD
setopt CORRECT
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

alias ze="vim ~/.zshrc"
alias zr="source ~/.zshrc"
alias ve="vim ~/.vimrc"
alias te="vim ~/.tmux.conf"

alias ls="ls -G"
alias la="ls -laSh"

alias ghp="hub pull-request"
alias gs="git status -sb"
alias gd="git diff"
alias gp="git push"
alias gps="git pull --recurse-submodules"
alias gpom="git push origin master"
alias ga="git add -A"
alias gc="git commit --verbose"
alias gl="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

alias ber="bundle exec ruby"
alias be="bundle exec"

alias sniff="sudo tcpdump -n -ilo0 -A -s0 tcp port 3000"

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/benlovell/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="$HOME/.rbenv/bin:/usr/local/bin:$PATH"
eval "$(rbenv init -)"
