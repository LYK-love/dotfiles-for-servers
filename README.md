# Server dotfiles

Linux server terminal configuration managed with [yadm](https://yadm.io/).
This repository intentionally remains separate from `dotfiles-for-mac`.

## Install

Install the basic dependencies, then clone with yadm:

```sh
sudo apt-get update
sudo apt-get install -y git yadm zsh
yadm clone --bootstrap https://github.com/LYK-love/dotfiles-for-servers.git
```

The bootstrap initializes the public NvChad submodule and links the managed
Zsh, Powerlevel10k, and Zellij files into their standard locations. It refuses
to replace an existing file or unrelated symlink.

After reviewing the configuration, set Zsh as the login shell if desired:

```sh
chsh -s "$(command -v zsh)"
```

## Update

```sh
yadm pull --ff-only
yadm submodule update --init --recursive
yadm bootstrap
```

## Machine-local configuration

Keep credentials, installation-specific paths, and workload defaults in
`~/.zshrc.local`. For example, GPU servers can opt into settings without
forcing them on every machine:

```sh
export MUJOCO_GL=osmesa
export WANDB_MODE=offline
```

Never commit `~/.zshrc.local` or plaintext credentials.
See `.zshrc.local.example` for non-secret examples.

## SSH agent forwarding inside tmux

Source the managed helper from `~/.bashrc` on servers that use Bash and
long-running tmux sessions:

```bash
if [ -r "$HOME/bash/ssh-agent-tmux.bash" ]; then
    . "$HOME/bash/ssh-agent-tmux.bash"
fi
```

It refreshes the forwarded `SSH_AUTH_SOCK` used by old tmux panes after an SSH
reconnect.

## Validate

```sh
zsh -n ~/zsh/.zshrc
zsh -n ~/zsh/.p10k.zsh
bash -n ~/bash/ssh-agent-tmux.bash
ZELLIJ_CONFIG_FILE="$HOME/zellij/config.kdl" zellij setup --check
```

The longer machine-setup article is available at
[How to Set Up on A New Machine](https://lyk-love.cn/2024/01/09/how-to-set-up-on-a-new-machine/),
but this README is the authoritative dotfiles installation procedure.
