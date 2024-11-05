# Installation
1. Make a backup of your current Neovim files:
   ```bash
   # Linux / Macos (unix)
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak

   # Windows
   mv ~/AppData/Local/nvim ~/AppData/Local/nvim.bak
   mv ~/AppData/Local/nvim-data ~/AppData/Local/nvim-data.bak
   ```
2. Clone the configuration
   ```bash
   # Linux / Macos (unix)
   git clone https://github.com/eatPizza311/nvim_config.git ~/.config/nvim

   # Windows
   git clone https://github.com/eatPizza311/nvim_config.git ~/AppData/Local/nvim
   ```

   > 🚨 For [toggleterm](https://github.com/akinsho/toggleterm.nvim) to work on Windows, one should set the Vim terminal accordingly (check [Using git-bash on windows ](https://github.com/akinsho/toggleterm.nvim/issues/463))
   > ```lua
   > vim.opt.shell = "C:/Users/xxx/AppData/Local/Programs/Git/bin/bash.exe" -- Change to your Gitbash path
   > vim.opt.shellcmdflag = "-s"
   > ```
3. Mason install Linter, Formatter & Debugger
     - codelldb
     - stylua
     - ruff
     - black
     - mypy
