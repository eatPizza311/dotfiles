-- Converting tabs to spaces
vim.cmd("set expandtab")
vim.cmd("set softtabstop=4")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

-- Changing leader
vim.g.mapleader = " "

-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", 
          "MunifTanjim/nui.nvim",
        }
    },    
}
local opts = {}

require("lazy").setup(plugins, opts)

-- Enable catppuccin
require("catppuccin").setup()
vim.cmd.colorscheme("catppuccin")

-- Enable telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Config treesitter
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = { "lua", "python", "rust" },
    highlight = { enable = true },
    indent = { enable = true },
})

-- Invoking Neotree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
