See my doc: [How to Set Up on A New Machine](https://lyk-love.cn/2024/01/09/how-to-set-up-on-a-new-machine/#set-up-terminal-on-a-new-machine)

## Bash Snippets

### SSH agent forwarding inside tmux

Source this from `~/.bashrc` on servers where development happens through SSH
and long-running tmux sessions:

```bash
if [ -f "$HOME/projects/dotfiles-for-servers/bash/ssh-agent-tmux.bash" ]; then
    . "$HOME/projects/dotfiles-for-servers/bash/ssh-agent-tmux.bash"
fi
```

This fixes stale `SSH_AUTH_SOCK` values inside old tmux panes after reconnecting
to the server. Without this, GitHub SSH commands can fail with publickey or
agent errors even though agent forwarding works in a fresh SSH shell.
