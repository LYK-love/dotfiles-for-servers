# Managed by yadm: https://github.com/LYK-love/dotfiles-for-servers

# Keep Powerlevel10k's instant prompt close to the top of this file.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Machine-specific paths, credentials, and workload defaults belong here.
[[ -r "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

typeset -U path PATH
path_prepend() {
  [[ -d "$1" ]] && path=("$1" $path)
}
path_append() {
  [[ -d "$1" ]] && path+=("$1")
}

# yadm checks this repository out directly into $HOME.
export DOT_FILE_HOME="$HOME"
export ZSH_DOT_FILE_HOME="$HOME/zsh"
export NVIM_CUSTOM_HOME="$HOME/NvChad-custom-file"
export ZELLIJ_CONFIG_DIR="$HOME/.config/zellij"
export ZELLIJ_CONFIG_FILE="$ZELLIJ_CONFIG_DIR/config.kdl"
export P10K_CONFIG_FILE="$HOME/.p10k.zsh"

export PROJECT_HOME="${PROJECT_HOME:-$HOME/Projects}"
export IMAGE_HOME="${IMAGE_HOME:-$HOME/Images}"
path_prepend "$HOME/.local/bin"

export ZSH="$HOME/.oh-my-zsh"
export OH_MY_ZSH="$ZSH"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)
[[ -d "$ZSH/custom/plugins/zsh-autosuggestions" ]] && plugins+=(zsh-autosuggestions)
if [[ -r "$ZSH/oh-my-zsh.sh" ]]; then
  source "$ZSH/oh-my-zsh.sh"
fi

DRACULA_DISPLAY_CONTEXT=1
export DRACULA_THEME="$ZSH_DOT_FILE_HOME/zsh-dracula_theme"

if command -v eza >/dev/null 2>&1; then
  alias ls='eza'
fi
command -v lazydocker >/dev/null 2>&1 && alias lazy='lazydocker'

bucket='lyk-love'
bucket_old='seek2-lyk'

if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# Conda locations vary between servers; use the first installation found.
for conda_root in "$HOME/miniconda3" "$HOME/anaconda3"; do
  if [[ -x "$conda_root/bin/conda" ]]; then
    eval "$("$conda_root/bin/conda" shell.zsh hook 2>/dev/null)"
    break
  fi
done
unset conda_root

for gcloud_root in "$HOME/google-cloud-sdk" "$HOME/.local/google-cloud-sdk"; do
  [[ -r "$gcloud_root/path.zsh.inc" ]] && source "$gcloud_root/path.zsh.inc"
  [[ -r "$gcloud_root/completion.zsh.inc" ]] && source "$gcloud_root/completion.zsh.inc"
done
unset gcloud_root

[[ -r "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"
