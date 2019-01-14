# Alchemist Ubi Dotfiles

## Install

You must clone the repository in the root as `.dotfiles`:

```sh
git clone https://github.com/yordis/dotfiles.git ~/.dotfiles
```

## Usage

You must go to the `.dotfiles` folder to be able to run the scripts

```sh
cd ~/.dotfiles
```

### Installers

Installers are a bunch of scripts that install the necessary software and try
to setup the environment.

```sh
bin/installers
```

This will run all the `installer.sh` files from inside the `installers` folder.

### Symlinks

Allow you to manage the configuration files from `.dotfiles`. It creates the
symlinks into your `$HOME` directory.

- **file to file**: add `.symlink` in the **file name** and it will create the
  symlink.

- **directory to files**: add `.symlink` in the **directory name** and it will
  **create symlinks for every file inside the directory.**

```sh
bin/symlinks
```
