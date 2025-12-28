# ZSH Util

A collection of various ZSH utilities that streamline common tasks for me

## Installation

1. Clone the repo to your home dir

```sh
git clone https://github.com/j-sustr/zsh-util.git ~/zsh-util
```

2. Run `make` to build the project

```sh
make
```


3. Add this line to the top of your `~/.zshrc` file

```sh
fpath=(~/zsh-util/build $fpath);
autoload -U $fpath[1]/*(.:t)
```

## Dotfiles

The project includes mirrored versions of the `.zshrc` and `.zprofile` files for easier management. These were created using **Hard Links** so that changes are instantly synchronized:

```bash
mkdir -p dotfiles_mirror
ln ~/.zshrc dotfiles_mirror/.zshrc
ln ~/.zprofile dotfiles_mirror/.zprofile
```

### Repairing Links

If a hard link is broken (e.g., by an editor "atomic save"), you can repair all links using:

```bash
fix_dotfile_links
```

This utility will detect broken links, synchronize the content (favoring the newer version), and restore the hard link connection.