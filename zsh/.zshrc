bindkey -e

source /etc/profile
source $HOME/.profile

alias ff="find | grep -i "
alias vi="vim"
alias ll="ls -al"
alias ls="ls --color"
alias pacman="sudo pacman"
alias netcfg="sudo netcfg"
alias reboot="sudo reboot"
alias halt="sudo halt"
#alias pacman=pacman-color
alias mopen=exo-open
alias o=exo-open
alias sqlplus="rlwrap sqlplus"
alias -g TVM="\$(cat vmid)" 

autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
autoload -U promptinit 
promptinit

known_extensions=( avi flv rmvb jpg png )
for ext in "${known_extensions[@]}" ; do 
	alias -s "${ext}"=exo-open
done

#zstyle :mime: mailcap ~/.mailcap /usr/local/etc/mailcap /etc/mailcap
#zstyle :mime: mime-types ~/.mime.types /usr/local/etc/mime.types /etc/mime.types
#autoload -U zsh-mime-setup 
#zsh-mime-setup

setopt AUTO_CD

autoload colors
colors
PROMPT="%{$fg[green]%}%n%{$fg[white]%}$ "
RPROMPT="%{$fg[green]%}%d%{$fg[white]%} %T"

# for emacs search to work
unsetopt flowcontrol


HISTSIZE=1000 
SAVEHIST=1000
HISTFILE=~/.zshHistory


alias napi="napi-bash -c '$1'"

zstyle ':completion:*:processes' command 'ps xw -o pid,tty,time,args'
zstyle ':completion:*' menu select=long-list select=1
zstyle ':completion:*:*:*:*' list-suffixes yes

setopt extended_glob
highlights='${PREFIX:+=(#bi)($PREFIX:t)(?)*==31=1;32}':${(s.:.)LS_COLORS}}
zstyle -e ':completion:*' list-colors 'reply=( "'$highlights'" )'
unset highlights

precmd() {
	if [ -n "$DISPLAY" ] ; then
		if [ "screen" = "$TERM" ] ; then
			title=$(basename $PWD)
			echo -ne "\ek${title}\e\\"
		else	
			print -Pn "\e]0;%~\a"
		fi
	fi
}

preexec() {
	if [ -n "$DISPLAY" ] ; then
		if [ "screen" = "$TERM" ] ; then
			echo -ne "\ek${1}\e\\"
		else	
			print -Pn "\e]0;$1\a" 
		fi
	fi
}

# share history
setopt append_history
setopt share_history


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


# c+x, c+e - edit current command in $EDITOR
#autoload edit-command-line                                                                                                              /home/mateusz 9:47
#zle -N edit-command-line                                                                                                                /home/mateusz 9:47
#bindkey '^x^e' edit-command-line

