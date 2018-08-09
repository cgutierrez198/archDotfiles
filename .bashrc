#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null
alias ls='ls --color=auto'
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.4.0/bin:$PATH"
alias ranger='ranger --choosedir=$HOME/rangerdir;LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
alias last_DIR='LASTDIR=`cat $HOME/rangerdir`;cd "$LASTDIR"'
alias vim='nvim'
export EDITOR=nvim
neofetch
alias mupdf='mupdf -C 00ff00 -I'
PS1='[\u@\h \W]\$ '
