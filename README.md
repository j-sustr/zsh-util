# ZSH Util

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