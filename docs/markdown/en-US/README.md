# Using these dotfiles

## ZSH

1. Install [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) and [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
1. Replace your existing ~/.zshrc file with the one from this repository or just copy certain settings
1. Install custom plugins
   Download and copy these plugins to ~/.oh-my-zsh/custom/plugins/ folder
   1. [nvm-auto](https://github.com/dijitalmunky/nvm-auto)
   1. [zsh-256color](https://github.com/chrissicool/zsh-256color)
   1. [zsh-completions](https://github.com/zsh-users/zsh-completions)
   1. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)

### Custom features

1. [Visual studio code](https://code.visualstudio.com/) launcher
   Usage:
   1. `code .` open current folder in VS Code
   1. `code <PATH_TO_FILE>` open specific file in VS Code
1. [cheatsh](https://github.com/chubin/cheat.sh) shortcut
   Usage:
   1. `cheatsh ruby/Array`
   1. `cheatsh ruby/Hash`
1. historyfind, find any command usage in entire ZSH history
   Usage: `hf ssh`
1. Quick aliases
   1. Update pre-defined aliases to your own folder structure
   1. Then simply type alias in terminal to perform that action
1. [Lazy Git](https://github.com/jesseduffield/lazygit), a custom Git GUI for terminal
   1. Install via homebrew `brew install lazygit`
   1. Alias is already defined, so just type `lg` in `clio` project folder
1. Delete all Git branches locally except `master` and `develop`
   1. `delete_git_branches`
   1. Verify: `git branches`

## Custom ZSH theme

1. Copy the `oh-my-zsh/custom/themes/indigo.zsh-theme` file to `~/.oh-my-zsh/custom/themes/` folder
1. Update ~/.zshrc file to use this theme `ZSH_THEME="indigo"`

## Help using ZSH features

1. [Oh My Zsh Cheatsheet](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet)

## TODO

1. Place all significant dotfiles in this repository
1. Write a script to auto deploy them on local machine
