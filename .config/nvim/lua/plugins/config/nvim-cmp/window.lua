local cmp = require("cmp")

return {
  documentation = cmp.config.window.bordered {},
  completion = cmp.config.window.bordered {
    border = "none",
    side_padding = 0,
    col_offset = -3,
  },
}
