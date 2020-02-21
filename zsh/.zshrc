# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="indigo"

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
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aws brew bundler gem git git-extras history node npm nvm nvm-auto osx rails ruby rvm vagrant zsh-256color zsh-completions
)

# List of custom plugins used
# 1. nvm-auto, https://github.com/dijitalmunky/nvm-auto
# 2. zsh-256color, https://github.com/chrissicool/zsh-256color
# 3. zsh-completions, https://github.com/zsh-users/zsh-completions
# Download and copy them to ~/.oh-my-zsh/custom/plugins/ folder

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# visual studio code launcher
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

# cheat.sh shortcut
function cheatsh {
    if [[ $# -eq 0 ]] ; then
        echo "Missing search term, try 'cheatsh ruby'"
    else
        curl cheat.sh/$1
    fi
}

# search in history
function historyfind {
    if [[ $# -eq 0 ]] ; then
        echo "Missing search term, try 'historyfind git'"
    else
        grep -r $1 ~/.zsh_history
    fi
}

# git terminal gui, https://github.com/jesseduffield/lazygit
alias lg="lazygit"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshconfig="code ~/.zshrc"
alias ohmyzshconfig="code ~/.oh-my-zsh"
alias ohmyzsh="cd ~/.oh-my-zsh"

# ssh folder
alias sshkeys="cd ~/.ssh"

# Delete all Git branches locally except master and develop
alias delete_git_branches="git branch | grep -v \"master\|develop\" | xargs git branch -D"

# history
alias zhistory="cat ~/.zsh_history"
alias bhistory="cat ~/.bash_history"

# Reload ZSH config
alias reload=". ~/.zshrc"

# Set PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

# nvm, non-brew variant
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rvm
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# ZSH completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Syntax highlighting, disable if slower
source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
