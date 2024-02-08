# Workspace

## How-To

### Overwrite the `git` configuration for based on the organization

1. Use `includeIf` based on the directory of the organization, or the remote repo URL, for example:

    ```.gitconfig
    [includeIf "gitdir:~/Developer/acme/"]
      path = "~/Developer/acme/.gitconfig"
    ```

2. Add the `user` section to the organization's `.gitconfig` file, for example:

    ```.gitconfig
    [user]
    email = "yordis@acme.com"
    ```
