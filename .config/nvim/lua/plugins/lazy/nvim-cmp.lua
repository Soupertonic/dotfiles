return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("plugins.config.nvim-cmp")
    end,
  },
}
