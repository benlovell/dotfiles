export PROMPT='%B%m%~%b %# '
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export EDITOR="mvim -v"

bindkey -v
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

setopt prompt_subst
setopt auto_pushd
setopt AUTOCD
setopt CORRECT CORRECT_ALL

alias vim="mvim -v"
alias vi="mvim -v"

alias ze="vim ~/.zshrc"
alias zr="source ~/.zshrc"
alias ve="vim ~/.vimrc"
alias te="vim ~/.tmux.conf"

alias la="ls -laSh"

alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gps="git pull --recurse-submodules"
alias gpom="git push origin master"
alias ga="git add -A"
alias gc="git commit --verbose"
alias gl="git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short"

alias tfdl="tail -f log/development.log -n200"
alias zs="zeus start"
alias zc="zeus console"
alias zg="zeus g"
alias zspec="zeus rspec spec"
alias zcuke="zeus cucumber"

alias ber="bundle exec ruby"
alias be="bundle exec"

PATH=/usr/local/bin:/usr/local/sbin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/benlovell/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
