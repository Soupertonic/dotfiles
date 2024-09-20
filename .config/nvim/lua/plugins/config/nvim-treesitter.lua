require("nvim-treesitter.configs").setup {
  ensure_installed = { "lua" },
  sync_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
