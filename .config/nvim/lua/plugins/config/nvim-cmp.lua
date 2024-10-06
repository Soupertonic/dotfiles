local cmp = require("cmp")
local autopairs = require("nvim-autopairs.completion.cmp")

cmp.event:on('confirm_done', autopairs.on_confirm_done())
cmp.setup {
  completion = {
    autocomplete = false,
  },
  view = require("plugins.config.nvim-cmp.view"),
  snippet = require("plugins.config.nvim-cmp.snippet"),
  sources = require("plugins.config.nvim-cmp.sources"),
  window = require("plugins.config.nvim-cmp.window"),
  formatting = require("plugins.config.nvim-cmp.formatting"),
  mapping = require("plugins.config.nvim-cmp.mapping"),
  sorting = require("plugins.config.nvim-cmp.sorting"),
}
