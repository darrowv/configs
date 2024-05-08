###  Nvim Config Installation
- Install NvChad using [official guide](https://nvchad.com/docs/quickstart/install)
- Replace your ~/.config/nvim directory with /nvim from this repository
- Open neovim and run `:MasonInstallAll`
- Done!

### Tmux Config Installation
- If not installed, [install tmux](https://github.com/tmux/tmux/wiki/Installing)
- Copy .tmux.conf from this repository to your /home/{username} (or just ~) directory
- Reload TMUX environment so TPM (tmux plugin manager) is sourced:
```
# Run this to update config if tmux already running 
tmux source ~/.tmux.conf
```
- Install plugins. Press `prefix` (**Ctrl - b** by default) + **I** (capital i, as in **I**nstall) to fetch the plugins.
