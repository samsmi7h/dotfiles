# Dotfiles

## Git Setup
Git users are set based on the remote being used.

`.gitconfig` includes the personal git user when using a personal github remote, and work user when using work remotes.

`.ssh/config` looks at the remote host being accessed. Personal remotes use the host `github.com-personal`, and the SSH agent knows to use a personal SSH key, for my personal github account, when this prefix is present.
