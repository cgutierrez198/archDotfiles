if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi

# Lines configured by zsh-newuser-install
 export ORACLE_BASE=/oracle
 export ORACLE_HOME=/oracle/app/honwei/product/12.2.0/dbhome_1
 export ORACLE_SID=orcl
 

#export ORACLE_HOME=/usr/lib/oracle/product/11.2.0/xe
#export ORACLE_SID=XE
export PATH=$PATH:$ORACLE_HOME/bin

export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=4000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/honwei/.zshrc'

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/
setopt NO_GLOBAL_RCS
#ZSH_THEME="dogenpunk"
#ZSH_THEME="fino-time"
#ZSH_THEME="fox"
#ZSH_THEME="funky"
#ZSH_THEME="gnzh"
ZSH_THEME="jonathan"
#ZSH_THEME="powerline"
#ZSH_THEME="xiong-chiamiov-plus"
#ZSH_THEME="bira"
#
alias click='w3m -o auto_image=FALSE'
alias finch='chat'
alias ls='ls --color=auto'
export PATH="$HOME/bin:$PATH"
#export PATH="$HOME/.gem/ruby/2.4.0/bin:$PATH"
export PATH="/home/honwei/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
alias ranger='ranger --choosedir=$HOME/rangerdir;LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
alias last_DIR='LASTDIR=`cat $HOME/rangerdir`;cd "$LASTDIR"'
alias vim='nvim'
alias youtube-dl_Movies='youtube-dl --config-location ~/.config/youtube-dl/movies'
alias sqlplus='cd $ORACLE_BASE ; sqlplus'
export EDITOR=nvim
neofetch --caca  /home/honwei/Pictures/honwei2.png --size 30% 
alias mupdf='mupdf -C 00ff00 -I'
alias neomutt='$HOME/bin/emailSystemctlstart'
autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/known_hosts"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
