# Alchemist Ubi Dotfiles

Configure personal workstation using Ansible.

## Requirements

You may require to install `pip`, visit [Installing pip]. We recommend using
latest `pip` and Python 3.

```shell
pip3 install -U pip
```

Install [Ansible](https://www.ansible.com/), visit [Ansible
Installation Guide] for more information.

```shell
pip3 install --user ansible
```

## Get Started

Clone the repository into `$HOME/.dotfiles` directory.

```shell
git clone https://github.com/yordis/dotfiles.git $HOME/.dotfiles
```

## Bootstrap

First setup installation run the `dotfiles-bootstrap` command.

```shell
./bin/dotfiles-bootstrap
```

After that you can run any scripts defined in the `$DOTFILES_PATH/bin`

```shell
dotfiles-bootstrap
```

[Ansible Installation Guide]: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
[Installing pip]: https://pip.pypa.io/en/stable/installing/