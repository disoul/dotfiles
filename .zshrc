# Path to your oh-my-zsh installation.
export ZSH=/home/disoul/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

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
plugins=(autojump git)

# User configuration

export ANDROID_SDK_HOME="/home/disoul/Public/android-sdk-linux"
export ANDROID_NDK_HOME="/home/disoul/NDK/android-ndk-r9c"
export PATH="${ANDROID_SDK_HOME}/tools:${ANDROID_SDK_HOME}/platform-tools:${ANDROID_NDK_HOME}:$PATH"

export PATH="/home/disoul/local/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cp='cp -i'
alias rm='rm -i'
alias fuck='eval $(thefuck $(fc -ln -1))'
alias ssocks='sslocal -c ~/Public/socks/config.json'
alias as='/home/disoul/Public/android-studio/bin/studio.sh'

# dir_colors
eval `dircolors ~/.dir_colors`

# Detect term wrappers
#WRAPPER_PID="$( ps -o ppid --no-headers | head -1 | tr -d "[:blank:]" )"
WRAPPER_PID="$PPID"

if [[ "x${WRAPPER_PID}" != "x" ]]; then
	WRAPPER_PROGRAM="$( cat "/proc/${WRAPPER_PID}/cmdline" | tr '\0' ' ' )" ;
else
	WRAPPER_PROGRAM="unknown" ;
fi
#echo $WRAPPER_PROGRAM

echo $WRAPPER_PROGRAM | grep 'terminator' > /dev/null && WRAPPER_PROGRAM="terminator"

# set TERM variable
if [[ "x${WRAPPER_PROGRAM}" == "xfbterm" ]]; then
	TERM=fbterm ;
elif [[ "x${WRAPPER_PROGRAM}" == "xTerminal" ]]; then
	TERM=xterm-256color ;
elif [[ "x${WRAPPER_PROGRAM}" == "xgnome-terminal" ]]; then
	TERM=xterm-256color ;
elif [[ "x${WRAPPER_PROGRAM}" == "xterminator" ]]; then
	TERM=xterm-256color ;
elif [[ "x${WRAPPER_PROGRAM}" == "xtmux" ]]; then
	TERM=xterm-256color ;
else
	LANG="en_US.UTF-8" ;
	export LANG ;
fi
export TERM


# npm
NPM_PACKAGES="${HOME}/local/npm-packages"

export PATH="${NPM_PACKAGES}/bin:${PATH}"
export MANPATH="${NPM_PACKAGES}/share/man:${MANPATH}"
export NODE_PATH="${NPM_PACKAGES}/lib/node_modules:${NODE_PATH}"
