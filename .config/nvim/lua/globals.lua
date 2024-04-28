--vim.opt.laststatus = 3
--vim.opt.cmdheight = 0
vim.opt.showmode = false
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.swapfile = false
vim.opt.colorcolumn = '79'
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.opt.background = 'dark'
vim.opt.backspace = 'indent,eol,start'
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.hlsearch = true
vim.opt.mouse = ''

vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_background = 'medium'
vim.g.gruvbox_material_foreground = 'mix'
vim.g.gruvbox_material_statusline_style = 'mix'
vim.g.gruvbox_material_dim_inactive_windows = 1

if vim.g.neovide then
  --vim.o.guifont = "IosevkaTerm Nerd Font:h16"
  vim.o.guifont = "JetbrainsMono Nerd Font:h14:w-0.75"
  vim.opt.linespace = 5
  vim.g.neovide_scroll_animation_length = 0.15
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_cursor_animation_length = 0.08
  vim.g.neovide_cursor_trail_size = 0.5
  vim.g.neovide_cursor_animate_in_insert_mode = false
end
