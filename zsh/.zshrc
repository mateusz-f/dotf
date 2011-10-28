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

# share history
setopt append_history
setopt share_history




#echo -ne '\e]4;0;#000000\a'   # black
#echo -ne '\e]4;1;#BF0000\a'   # red
#echo -ne '\e]4;2;#00BF00\a'   # green
#echo -ne '\e]4;3;#BFBF00\a'   # yellow
#echo -ne '\e]4;4;#0000BF\a'   # blue
#echo -ne '\e]4;5;#BF00BF\a'   # magenta
#echo -ne '\e]4;6;#00BFBF\a'   # cyan
#echo -ne '\e]4;7;#BFBFBF\a'   # white (light grey really)
#echo -ne '\e]4;8;#404040\a'   # bold black (i.e. dark grey)
#echo -ne '\e]4;9;#FF4040\a'   # bold red
#echo -ne '\e]4;10;#40FF40\a'  # bold green
#echo -ne '\e]4;11;#FFFF40\a'  # bold yellow
#echo -ne '\e]4;12;#4040FF\a'  # bold blue
#echo -ne '\e]4;13;#FF40FF\a'  # bold magenta
#echo -ne '\e]4;14;#40FFFF\a'  # bold cyan
#echo -ne '\e]4;15;#FFFFFF\a'  # bold white


echo -ne '\e]4;0;#101010\a'   # black
echo -ne '\e]4;1;#e5786d\a'   # red
echo -ne '\e]4;2;#cae682\a'   # green
echo -ne '\e]4;3;#ffe161\a'   # yellow
echo -ne '\e]4;4;#5283d7\a'   # blue
echo -ne '\e]4;5;#b698d9\a'   # magenta
echo -ne '\e]4;6;#a8c6f2\a'   # cyan
echo -ne '\e]4;7;#f6f3e8\a'   # white (light grey really)
echo -ne '\e]4;8;#857b6f\a'   # bold black (i.e. dark grey)
echo -ne '\e]4;9;#9d2a3a\a'   # bold red
echo -ne '\e]4;10;#8bbe34\a'  # bold green
echo -ne '\e]4;11;#ffc442\a'  # bold yellow
echo -ne '\e]4;12;#3b5d9a\a'  # bold blue
echo -ne '\e]4;13;#a57ac4\a'  # bold magenta
echo -ne '\e]4;14;#5da7e1\a'  # bold cyan
echo -ne '\e]4;15;#d3d7cf\a'  # bold white
