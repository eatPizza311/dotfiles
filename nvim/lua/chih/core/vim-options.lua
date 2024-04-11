-- Converts tabs to spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Changes leader key to space
vim.g.mapleader = " "

-- Escaps by jk
vim.keymap.set("i", "jk", "<ESC>", {})

-- Enables line number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "auto"

-- Sets cursor line highlighting
vim.cmd([[
  hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  set cursorline
]])

-- 80 ruler
vim.opt.colorcolumn = "80"

-- Shows help and others popup windows below instead of above
-- and when it's verticle splitting show on right instead of left
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Disables line wrapping
vim.opt.wrap = false

-- Synchronizes the system clipboard
-- with neovim's clipboard
vim.opt.clipboard = "unnamedplus"

-- Keeps my cursor centered vertically on the screen
vim.opt.scrolloff = 999

-- Virtualedit for Visual block mode
-- enable cursor to be positioned where there is no actual character
vim.opt.virtualedit = "block"

-- Live preview the change in another window
vim.opt.inccommand = "split"

-- Code folding using treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

-- Other stuff
vim.opt.ignorecase = true
vim.opt.termguicolors = true
