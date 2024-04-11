-- For conciseness
local opt = vim.opt

-- Indent settings: convert tabs to spaces
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.backspace = "indent,eol,start"

-- Enables line number
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"

-- 80 ruler
opt.colorcolumn = "80"

-- Shows popup windows in desire position
opt.splitbelow = true
opt.splitright = true

-- Disables line wrapping
opt.wrap = false

-- Synchronizes the system clipboard with neovim's clipboard
opt.clipboard:append("unnamedplus")

-- Keeps my cursor centered vertically on the screen
opt.scrolloff = 999

-- Virtualedit for Visual block mode
-- enable cursor to be positioned where there is no actual character
opt.virtualedit = "block"

-- Live preview the change in another window
opt.inccommand = "split"

-- Code folding using treesitter
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- Search settings: smart case sensitive
opt.ignorecase = true
opt.smartcase = true

-- Turn on termuicoloers (have to use iterm2 or any other true color terminal)
opt.termguicolors = true

-- Sets cursor line highlighting
vim.cmd([[
  hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
  set cursorline
]])
