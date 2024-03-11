-- Converting tabs to spaces
vim.cmd("set expandtab")
vim.cmd("set softtabstop=4")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
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
