## Install

Run this:

```sh
git clone https://github.com/yordis/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
bin/installers
bin/symlinks
```

## What it does?

`bin/installers` runs all the `installer.sh` files inside the **installers
folder.**

`bin/symlinks` creates the symlinks into your `$HOME` directory.
- **file to file**: add `.symlink` in the **file name** and it will create the
symlink.
- **directory to files**: add `.symlink` in the **directory name** and it will **create symlinks for every file inside the directory.**
