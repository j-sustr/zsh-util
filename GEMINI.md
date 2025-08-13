# Gemini Code Assistant Context

This document provides context for the Gemini Code Assistant to understand the `.zsh-util` project.

## Project Overview

This project is a collection of ZSH utilities designed to streamline common command-line tasks. The utilities are organized into subdirectories based on their functionality, such as `git`, `python`, `cleanup`, `disk`, and `meta`.

The core of the project is a set of ZSH script files, each containing a specific utility function. These scripts are intended to be sourced into a ZSH environment, making the utility functions available in the shell.

## Building and Running

The project uses a `Makefile` to simplify the build process. The primary build target is `build`, which creates a `build/` directory and copies all the utility scripts into it.

To build the project, run the following command:

```sh
make
```

To use the utilities, the `build/` directory needs to be added to the ZSH `fpath`, and the utility functions need to be autoloaded. This can be done by adding the following lines to your `~/.zshrc` file:

```sh
fpath=(~/.zsh-util/build $fpath);
autoload -U $fpath[1]/*(.:t)
```

## Development Conventions

The project follows a simple set of conventions for its ZSH utility scripts:

*   **File Structure:** Each utility is contained in its own file within a relevant subdirectory.
*   **Function-Based:** Each utility is implemented as a ZSH function. The function name is typically prefixed with a double underscore (e.g., `__git_commit_all`).
*   **Execution:** The script file itself calls the utility function at the end of the script.
*   **Simplicity:** The scripts are written to be simple, readable, and focused on a single task.
