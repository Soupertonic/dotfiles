  require('nvim-treesitter.configs').setup({
    ensure_installed = {
      'c',
      'lua',
      'vim',
      'vimdoc',
      'angular',
      'typescript',
      'javascript',
      'html',
      'css',
      'scss',
    },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
  })
