return {
  {
    "L3MON4D3/LuaSnip",
    run = "make install_jsregexp",
    after = "nvim-cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("plugins.config.luasnip")
    end,
  },
}
