-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Indent settings
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.backspace = "indent,eol,start"

-- 80 characters ruler
opt.colorcolumn = "80"

-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"
