vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.clipboard = "unnamed"

vim.g.mapleader = " "

vim.env.PATH = '/home/gh0st/.asdf/installs/nodejs/lts-gallium/bin' .. ':' .. vim.env.PATH
vim.g.node_host_prog = '/home/gh0st/.asdf/installs/nodejs/lts-gallium/.npm/lib/node_modules/neovim'
vim.g.python3_host_prog = '/home/gh0st/.asdf/installs/python/3.12.1/bin/python'
