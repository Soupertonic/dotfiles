vim.opt.laststatus = 3
vim.opt.wrapmargin = 0
vim.opt.textwidth = 0
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.bo.softtabstop = 2
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.expandtab = true
vim.opt.termguicolors = true 
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.cursorline = true
vim.opt.hlsearch = true

vim.opt.formatoptions:remove "c"
vim.opt.formatoptions:remove "r"
vim.opt.formatoptions:remove "o"

vim.opt.mouse = ""
vim.opt.background = "light"
vim.opt.backspace = "indent,eol,start"
vim.opt.signcolumn = "yes"
vim.opt.inccommand = "split"

vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.clipboard:append "unnamedplus"
vim.opt.formatoptions:remove "o"

vim.cmd("syntax on")
vim.cmd("filetype plugin on")
vim.cmd("color rose-pine")
