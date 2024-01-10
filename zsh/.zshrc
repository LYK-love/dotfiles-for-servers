#bEnable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#Path to my dotfiles
export DOT_FILE_HOME="$HOME/Projects/MyOfficialProjects/dotfiles"

# Path to my NvChad custom config files
export NVIM_CUSTOM_HOME="$DOT_FILE_HOME/NvChad-custom-file"
# Path to my dotfiles of zsh:
export ZSH_DOT_FILE_HOME="$DOT_FILE_HOME/zsh"

# Path to my dotfiles of zsh:
export ZSH_DOT_FILE_HOME="$DOT_FILE_HOME/zsh"

# Zellij. Default config dir is $HOME/.config/zellij
export ZELLIJ_CONFIG_DIR="$DOT_FILE_HOME/zellij"
export ZELLIJ_CONFIG_FILE="$ZELLIJ_CONFIG_DIR/config.kdl"

# p10k
export P10K_CONFIG_FILE="$ZSH_DOT_FILE_HOME/.p10k.zsh"

# Path to "Projects"
export PROJECT_HOME="$HOME/Projects"

# Path to some dirs:
export TOOL_HOME="$HOME/Tools"
export GLOBAL_TOOL_HOME="$TOOL_HOME/Global_Tools"
export PATH="$GLOBAL_TOOL_HOME:$PATH"
export HEXO_HOME="$HOME/Documents/LYK-love.github.io"
export POSTS="$HEXO_HOME/source/_posts"
export DRAFTS="$HEXO_HOME/source/_drafts"
export ML="$HOME/Projects/OnlineProjects/d2l-en/pytorch"
export DIARY="$HOME/Library/Mobile Documents/com~apple~CloudDocs/Diary"
export LAZY="$HOME/Projects/MyOfficialProjects/Lazy Scripts"

alias diary="open -a typora \"$DIARY/Diary2023/Diary2023_11.md\""
alias oss="python \"$LAZY/OSSUtils/OSSUtils.py\""
alias blog="python \"$LAZY/BlogUtils/BlogUtils.py\""


alias apa="python \"/Users/lyk/Projects/MyOfficialProjects/APA-Toolkit/main.py\""
# Emacs
export DOOM_HOME="$HOME/.config/emacs/bin"
export PATH="$DOOM_HOME:$PATH"


#Path to ZSH Dracula Theme
export DRACULA_THEME="$ZSH_DOT_FILE_HOME/zsh-dracula_theme"


## The context segment shows the username, and, if the user is root or logged in via SSH, the hostname of the system. To enable this segment, use the following in your config file:

DRACULA_DISPLAY_CONTEXT=1 

# Path to your oh-my-zsh installation. This includes your downloaded plugins.
export ZSH="$HOME/.oh-my-zsh"
export OH_MY_ZSH=$ZSH

# Package Manager
export HOMEBREW_BOTTLE_DOMAIN=""


# Zellij
export ZELLIJ_CONFIG_FILE="$HOME/.config/zellij/config.kdl"
export ZELLIJ_CONFIG_DIR="$HOME/.config/zellij"

#Python apps
export PATH="$HOME/.local/bin:$PATH"
# jdk 版本切换， on mac
# jdk-17.0.2.jdk   jdk1.8.0_321.jdk jdk-11.0.14.jdk 
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk/Contents/Home
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.14.jdk/Contents/Home
export JAVA_17_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.2.jdk/Contents/Home



alias jdk8='export JAVA_HOME=$JAVA_8_HOME'
alias jdk11='export JAVA_HOME=$JAVA_11_HOME'
alias jdk17='export JAVA_HOME=$JAVA_17_HOME'

# use conda python( not brew python )
## Sometimes python will be confused 
# unalias python

# 默认java8
export JAVA_HOME=$JAVA_8_HOME

# Golang Path, 并配置了代理
export GO111MODULE=on

## set mirroring, if you need to
export GOPROXY=https://goproxy.io,direct
## or `export GOPROXY="https://goproxy.cn"`

## go install 会讲软件安装到$GOPATH/bin, 由于它被配置到环境变量,因此软件可以直接从命令行调用
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"

## you can set as your own mirror
## export GO_BINARY_BASE_URL=https://golang.google.cn/dl/

export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"


# SCALA_HOME
export SCALA_HOME=/usr/local/scala
export TERM=xterm-color
export PATH=$PATH:${JAVA_HOME}/bin:$SCALA_HOME/bin

#HADOOP_HOME
export HADOOP_HOME=$HOME/hadoop
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

#SPARK_HOME
export SPARK_HOME=$HOME/spark
export PATH=$PATH:$SPARK_HOME/bin

#FLINK_HOME
export FLINK_HOME=/usr/local/flink
export PATH=$PATH:$FLINK_HOME/bin
# DOCKER
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0


# LLVM on MAC, mac已经自带了llvm, 但是位置很奇怪
MAC_LOCAL_LLVM_VERSION=14.0.6_1
export LLVM_MAC_LOCAL_HOME=/opt/homebrew/Cellar/llvm/$MAC_LOCAL_LLVM_VERSION
# brew目录下的llvm实际上是指向Mac local LLVM的符号链接, 为了方便, 还是用符号链接的路径吧
# export LLVM_HOME=/opt/homebrew/opt/llvm
# export LDFLAGS="-L($LLVM_HOME)/lib -Wl,-rpath,($LLVM_HOME)/lib"
# export CPPFLAGS="-I($LLVM_HOME)/include -I($LLVM_HOME)/include/c++/v1/"
# export PATH=$PATH:$LLVM_HOME/bin

# clang
# export CC=clang
# export CXX=clang++

# Bison
export PATH="$(brew --prefix bison)/bin:$PATH"

# NVM
export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

# Terminal Tools Config



# Themes of zsh. Currenly I have TWO themes. Feel free to choose one.
#
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="dracula"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git  zsh-autosuggestions fasd )

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Plugins alias
## fasd
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection




# env for oss
bucket="lyk-love"
bucket_old="seek2-lyk"

# OpenAI API Key
#


# Network
# Avoid DNS Pollusion from Chinese gov( will result in "Failed to connect to raw.githubusercontent.com port 443" when using git).
#
# export http_proxy=http://127.0.0.1:7890
# export https_proxy=http://127.0.0.1:7890
# export all_proxy=http://127.0.0.1:7890

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/lyk/Tools/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lyk/Tools/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/lyk/Tools/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lyk/Tools/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias nigate='bash nigate.shortcut'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lyk/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lyk/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lyk/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lyk/Downloads/google-cloud-sdk/completion.zsh.inc'; fi