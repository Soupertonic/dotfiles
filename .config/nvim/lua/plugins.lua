local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'cocopon/colorswatch.vim',
  'voldikss/vim-floaterm',
  'ramojus/mellifluous.nvim',
  'mathofprimes/nightvision-nvim',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-nvim-lsp',
  'sainnhe/gruvbox-material',
  {
    "catppuccin/nvim",
    name = "catppuccin",
    dependencies = {},
    config = function() require('configs.catppuccin') end,
    priority = 1000,
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function() require('configs.luasnip') end,
  },
  {
    'AstroNvim/astrotheme',
    dependencies = {},
    config = function() require('configs.astrotheme') end,
  },
  {
    'freddiehaddad/feline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'lewis6991/gitsigns.nvim' },
    config = function () require('configs.feline') end,
  },
  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('configs.fzf-lua') end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = {},
    config = function () require('configs.nvim-treesitter') end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {},
    config = function() require('configs.cmp') end,
  },
  {
    'williamboman/mason.nvim',
    dependencies = {},
    config = function() require('configs.mason') end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {},
    config = function() require('configs.mason-lspconfig') end
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {},
    config = function () require('configs.lspconfig') end,
  }
})
