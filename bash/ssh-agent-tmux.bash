# Keep SSH agent forwarding usable inside long-running tmux sessions.
#
# Problem this solves:
# SSH creates a fresh /tmp/ssh-*/agent.* socket on each login. Long-lived tmux
# panes keep the old SSH_AUTH_SOCK value, so GitHub SSH commands such as
# `git pull`, `git push`, and `ssh -T git@github.com` start failing after the
# original SSH connection is closed and a new one is opened.
#
# Fix:
# Non-tmux SSH login shells refresh a stable symlink at ~/.ssh/ssh_auth_sock.
# tmux shells always use that stable path, so old panes can reach the newest
# forwarded agent after reconnect.

SSH_AUTH_SOCK_LINK="$HOME/.ssh/ssh_auth_sock"

if [ -n "${SSH_CONNECTION:-}" ] && [ -n "${SSH_AUTH_SOCK:-}" ] && [ -S "$SSH_AUTH_SOCK" ] && [ -z "${TMUX:-}" ]; then
    mkdir -p "$HOME/.ssh"
    ln -snf "$SSH_AUTH_SOCK" "$SSH_AUTH_SOCK_LINK"
fi

if [ -n "${TMUX:-}" ] && [ -S "$SSH_AUTH_SOCK_LINK" ]; then
    export SSH_AUTH_SOCK="$SSH_AUTH_SOCK_LINK"
fi
