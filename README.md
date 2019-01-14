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

## Docker

You can use `docker-compose` setup from inside `~/.dotfiles/src/docker` folder.
Read more about `docker-compose` from the official documentation.

I will be using `dc` alias from `zsh` alias config.

### Useful commands

From `~/.dotfiles/src/docker` folder.

- `dc up -d`: runs all the services.
- `dc stop`: stops all the services.
- `docker exec -it "CONTAINER_NAME_OR_ID" COMMAND_NAME`: runs a command inside
  the container. Using `bash` is useful when you want to get into the container
  and run some bash commands.
