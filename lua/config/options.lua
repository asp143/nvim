-- leader Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"
vim.opt.breakindent = true
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 50
vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")
vim.opt.colorcolumn = "80"

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.opt.completeopt = "menuone,noselect"

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.snacks_animate = false
