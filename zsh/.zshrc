#bEnable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# For MUJOCO_GL
# See https://github.com/Eclectic-Sheep/sheeprl/blob/main/howto/learn_in_dmc.yyyy-mm-dd
# For egl, make sure you have installed egl on your system. (For Ubuntu22.04: `sudo apt-get install libglew2.2`)
# For osmesa, `sudo apt-get install libgl1-mesa-glx libosmesa6`
export MUJOCO_GL=osmesa
export WANDB_MODE=offline
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# By deafult, [lazydocker](https://github.com/jesseduffield/lazydocker) is installed under `$HOME/.local/bin`
export PATH=$HOME/.local/bin:$PATH

# Path to my images
export IMAGE_HOME="$HOME/Images"

# Path to my dotfiles
# export DOT_FILE_HOME="$HOME/dotfiles"
# Since I use `yadm`, all the dotfiles are in my `$HOME`
export DOT_FILE_HOME="$HOME"

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


#Path to ZSH Dracula Theme
export DRACULA_THEME="$ZSH_DOT_FILE_HOME/zsh-dracula_theme"
## The context segment shows the username, and, if the user is root or logged in via SSH, the hostname of the system. To enable this segment, use the following in your config file:

DRACULA_DISPLAY_CONTEXT=1 

# Path to your oh-my-zsh installation. This includes your downloaded plugins.
export ZSH="$HOME/.oh-my-zsh"
export OH_MY_ZSH=$ZSH

export JAVA_HOME=$JAVA_8_HOME


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
plugins=(git  zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# alias
alias ls="eza"
alias lazy="lazydocker"
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



# env for oss
bucket="lyk-love"
bucket_old="seek2-lyk"

# OpenAI API Key
#

# CLI plugins
# Zoxide
eval "$(zoxide init zsh)"

# Atuin. Bind ctrl-r but not up arrow
# eval "$(atuin init zsh --disable-up-arrow)"

# Network
# Avoid DNS Pollusion from Chinese gov( will result in "Failed to connect to raw.githubusercontent.com port 443" when using git).
#
# export http_proxy=http://127.0.0.1:7890
# export https_proxy=http://127.0.0.1:7890
# export all_proxy=http://127.0.0.1:7890




alias nigate='bash nigate.shortcut'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lyk/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lyk/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lyk/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lyk/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/lyk/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lyk/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/lyk/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lyk/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



