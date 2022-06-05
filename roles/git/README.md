# Git

## How-To

### Overwrite the `git` configuration for based on the organization

1. Make sure that `~/.dotfiles/roles/git/src/private.gitconfig` file exists.
2. Use `includeIf` based on the directory of the organization, or the remote repo URL, for example:

    ```.gitconfig
    [includeIf "gitdir:~/Developer/acme/"]
      path = "~/Developer/acme/.gitconfig"
    ```
