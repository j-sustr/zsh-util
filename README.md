# ZSH Util

A collection of various ZSH utilities that streamline common tasks for me

## Installation

1. Clone the repo to your home dir

```sh
git clone https://github.com/j-sustr/zsh-util.git ~/.zsh-util
```

2. Run `make` to build the project

```sh
make
```


3. Add this line to the top of your `~/.zshrc` file

```sh
fpath=(~/.zsh-util/build $fpath);
autoload -U $fpath[1]/*(.:t)
```

## Dotfiles

The project includes a mirrored version of the `.zshrc` file for easier management. This was created using a **Hard Link** so that changes are instantly synchronized and it remains seamless for CLI tools:

```bash
mkdir -p dotfiles_mirror
ln ~/.zshrc dotfiles_mirror/.zshrc
```