# How to use?
1. Clone this repo to the home folder (`~`)
2. Install [GNU Stow](https://www.gnu.org/software/stow/)
3. Create `~/.config/` if the folder does not exist
4. `cd` into `~/dotfiles`
6. Use stow to create symlinks:
     ```bash
     stow --target ~/.config . # Use `stow --target ~/.config -D .` to delete
     stow zsh
     ```

# Other tools
- [Zsh](https://www.zsh.org/)
  - [zinit](https://github.com/zdharma-continuum/zinit)
  - [zoxide](https://github.com/ajeetdsouza/zoxide)
  - [fzf](https://github.com/junegunn/fzf)
- [Tmux](https://github.com/tmux/tmux)
- [NeoVim](https://neovim.io/)
