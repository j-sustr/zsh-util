# ZSH Util

## Installation

1. Clone the repo to your home dir

```sh
git clone {repo-name} ~/.zsh-util
```


2. Add this line to the top of your `~/.zshrc` file

```sh
fpath=(~/.zsh-util $fpath);
autoload -U $fpath[1]/*(.:t)
```