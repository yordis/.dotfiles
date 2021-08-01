# Alchemist Ubi Dotfiles

Configure personal workstation using Ansible.

## Requirements

### Install Nix

Install `nix`:

```sh
curl -L https://nixos.org/nix/install | sh -s -- --no-daemon  --darwin-use-unencrypted-nix-store-volume
```

### Prepare pip

You may require to install `pip`, visit [installing pip](https://pip.pypa.io/en/stable/installing/)
for more information. We recommend using latest `pip` and Python 3.

```shell
pip3 install -U pip
```

Install [Ansible](https://www.ansible.com/), visit [installation guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
for more information.

```shell
pip3 install --user ansible
```

Verify that `pip3 bin` file is part of your `$PATH`. Use `pip3 list -v` to see
where `pip3` is installing the packages, and find the `bin` directory and add it
to your path.

Most likely the following command would work:

```shell
export PATH="$HOME/Library/Python/3.8/bin:$PATH"
```

## Get Started

Clone the repository into `$HOME/.dotfiles` directory.

```shell
git clone https://github.com/yordis/dotfiles.git $HOME/.dotfiles
```

## Bootstrap

First setup installation run the `dotfiles-bootstrap` command.

```shell
cd $HOME/.dotfiles
./bin/dotfiles-bootstrap
```

After that you can run any scripts defined in the `$DOTFILES_ROOT/bin`

```shell
dotfiles-bootstrap
```
