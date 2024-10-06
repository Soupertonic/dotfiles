local luasnip = require("luasnip")

return {
  expand = function(args)
    luasnip.lsp_expand(args.body)
  end,
}
