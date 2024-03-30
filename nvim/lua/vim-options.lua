-- Converting tabs to spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Changing leader
vim.g.mapleader = " "

-- Escap using jk
vim.keymap.set("i", "jk", "<ESC>", {})

-- Line number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "auto"

-- Set cursor line highlighting
vim.cmd([[
  hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  set cursorline
]])

-- 80 ruler
vim.opt.colorcolumn = "80"

-- show help and others below instead of above
vim.opt.splitbelow = true

-- disable line wrapping
vim.opt.wrap = false

-- synchronize the system clipboard
vim.opt.clipboard = "unnamedplus"

-- for better UX when move up and down
vim.opt.scrolloff = 999
