local cmp = require("cmp")
local luasnip = require("luasnip")

return {
  ['<C-k>'] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}),
  ['<C-j>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}),
  ['<C-u>'] = cmp.mapping.scroll_docs(-4),
  ['<C-d>'] = cmp.mapping.scroll_docs(4),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<C-s>'] = cmp.mapping.complete({ reason = cmp.ContextReason.Auto }),
  ['<C-y>'] = cmp.mapping.confirm({ select = false }),
  ['<CR>'] = cmp.mapping.confirm({
    behavior = cmp.ConfirmBehavior.Insert,
    select = true,
  }),
  ['S-k'] = cmp.mapping(function(fallback)
    if cmp.visible_docs() then
      cmp.close_docs()
    elseif cmp.visible() then
      cmp.open_docs()
    else
      fallback()
    end
  end),
  ['<Tab>'] = cmp.mapping(function(fallback)
    if luasnip.jumpable(1) then
      luasnip.jump(1)
    else
      fallback()
    end
  end, {'i', 's'}),
  ['<S-Tab>'] = cmp.mapping(function(fallback)
    if luasnip.jumpable(-1) then
      luasnip.jump(-1)
    else
      fallback()
    end
  end, {'i', 's'}),
}
