[ -f /Users/ed/.sensible.bash ] && . /Users/ed/.sensible.bash
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
export PROMPT_COMMAND+='; __git_ps1 "\W" " > ";'
[ -f /usr/local/etc/profile.d/z.sh ] && . /usr/local/etc/profile.d/z.sh

export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=verbose
export GIT_PS1_DESCRIBE_STYLE=auto
# pg_config must be on path for jiggl to run
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin/

alias wget='wget --content-disposition'
alias mplayer=mpv
alias td="vim ~/todo.txt"
alias vs="code ."
alias vi="vim"
alias v="vim"
alias o="open"
alias m="mpv"
alias d="docker"
alias doc="docker-compose"
export VISUAL=/usr/local/bin/vim
export EDITOR="$VISUAL"

#specified in git config to get auto-complete
alias ga="git add"       #git a
alias gch="git checkout" #git c
alias gd="git diff"      #git d
alias gr="git reset"     #git r

alias gaa="git add -A"
alias gap="git add -p"
alias gb="git branch --sort=-committerdate"
alias gba="git branch -a --sort=-committerdate"
alias gc="git commit -v"
alias gca="git commit -v --amend"
alias gcm="git commit -m"
alias gchm="git checkout master"
alias gchd="git checkout develop"
alias gchr="git checkout release"
alias gdl="git diff --word-diff"
alias gdw="git diff --ignore-space-at-eol -b -w --ignore-blank-lines"
alias gdc="git diff --cached"
alias gf="git fetch --all"
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glp="gl -p"
alias grm="git rebase master"
alias grd="git rebase develop"
alias gpull="git pull"
alias gpush="git push"
alias gs="git status"
alias gss="git status --short"
alias gsb="git submodule update --init"

alias dcu="doc up -d"
alias dcs="doc stop"
alias dcb="doc build"
alias dcp="doc ps"
alias dcl="doc logs -f"
alias dcr="dcs && dcu"

dcrl ()
{
    dcb $* && dcu $*
}

mkd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

eval "$(pyenv init -)"
eval "$(pipenv --completion)"

