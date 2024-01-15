-- Converting tabs to spaces
vim.cmd("set expandtab")
vim.cmd("set softtabstop=4")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

-- Changing leader
vim.g.mapleader = " "

-- Escap using jk
vim.keymap.set("i", "jk", "<ESC>", {})
