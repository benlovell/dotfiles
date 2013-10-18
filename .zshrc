export PROMPT='%B%m%~%b %# '
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export EDITOR="vim"

bindkey -v
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

setopt prompt_subst
setopt auto_pushd
setopt AUTOCD
setopt CORRECT

alias ze="vim ~/.zshrc"
alias zr="source ~/.zshrc"
alias ve="vim ~/.vimrc"
alias te="vim ~/.tmux.conf"

alias ls="ls -G"
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
alias zspec="zeus rspec"
alias zcuke="zeus cucumber"

alias ber="bundle exec ruby"
alias be="bundle exec"

PATH=/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/benlovell/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# added by travis gem
source /Users/benlovell/.travis/travis.sh


# BEGIN Ruboto setup
source ~/.rubotorc
# END Ruboto setup

