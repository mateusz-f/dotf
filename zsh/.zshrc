source $HOME/.profile

alias vi="vim"
alias ll="ls -al"
alias ls="ls --color"
#alias pacman=pacman-color
alias o=mopen

autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
autoload -U promptinit
promptinit


autoload colors
colors
PROMPT="%{$fg[green]%}%n%{$fg[white]%}$ "
RPROMPT="%{$fg[green]%}%d%{$fg[white]%} %T"

# for emacs search to work
unsetopt flowcontrol


HISTSIZE=1000 
SAVEHIST=1000
HISTFILE=~/.zshHistory


alias -s avi=mopen
alias -s jpg=mopen
alias -s jpeg=mopen
alias -s flv=mopen
alias -s mkv=mopen
alias -s rmvb=mopen
alias -s ogm=mopen
alias -s pdf=mopen
alias -s rar=mopen
alias -s html=mopen
alias -s htm=mopen
alias -s zip=mopen
alias -s ods=mopen
alias -s odf=mopen
alias -s odt=mopen
alias -s chm=mopen
alias -s png=mopen
alias -s chm=mopen

alias napi="napi-bash -c '$1'"

zstyle ':completion:*:processes' command 'ps xw -o pid,tty,time,args'
zstyle ':completion:*' menu select=long-list select=1
zstyle ':completion:*:*:*:*' list-suffixes yes

setopt extended_glob
highlights='${PREFIX:+=(#bi)($PREFIX:t)(?)*==31=1;32}':${(s.:.)LS_COLORS}}
zstyle -e ':completion:*' list-colors 'reply=( "'$highlights'" )'
unset highlights

precmd() {
	print -Pn "\e]0;%~\a"
}

preexec() {
	print -Pn "\e]0;$1\a" 
}



