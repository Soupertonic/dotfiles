require("nvim-treesitter.configs").setup {
  ensure_installed = { "lua" },
  sync_install = true,
  indent = {
    enable = true,
  },
}
