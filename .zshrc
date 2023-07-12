# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/david/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit
prompt fade white black

zstyle ':completion:*' menu select

export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
export LANGUAGE=en_GB.UTF-8

alias ls="ls --color"
alias looking-glass-client="looking-glass-client app:renderer=OpenGL -s -m 97"

alias yt720='mpv --ytdl-format=22 $1'
alias pyflix='python3 /home/david/code/python/pyflix/main.py'

export PATH="$HOME/.local/bin:$PATH"
export WINEPREFIX="$HOME/.wine"
export QT_STYLE_OVERRIDE=Adwaita-Dark

# cat .xprofile | bash 2>&1
