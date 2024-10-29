return {
  {
    "saghen/blink.cmp",
    dependencies = 'rafamadriz/friendly-snippets',
    lazy = false,
    build = 'cargo build --release',
    config = function()
      require("plugins.config.blink")
    end,
  }
}
