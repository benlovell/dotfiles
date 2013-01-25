export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export PROMPT="%~%%: "

export EDITOR=vim

bindkey -v
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

setopt prompt_subst
setopt auto_pushd
setopt AUTOCD
setopt CORRECT CORRECT_ALL

alias ze="vim ~/.zshrc"
alias zr="source ~/.zshrc"
alias ve="vim ~/.vimrc"
alias te="vim ~/.tmux.conf"

alias la="ls -laSh"

alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias ga="git add -A"
alias gc="git commit -am"

alias tfdl="tail -f log/development.log -n200"
alias zs="zeus start"
alias zc="zeus console"
alias zg="zeus g"
alias zspec="zeus rspec spec"
alias zcuke="zeus cucumber"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PROMPT='%B%m%~%b %# '
