local ctp_feline = require('catppuccin.groups.integrations.feline')
ctp_feline.setup({
  assets = {
    left_separator = "",
    right_separator = "",
  },
  view = {
    lsp = {
      name = true,
      separator = ", ",
    },
  }
})

require("feline").setup({
  components = ctp_feline.get(),
})
