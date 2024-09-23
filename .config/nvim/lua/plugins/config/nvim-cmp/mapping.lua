local cmp = require("cmp")
local luasnip = require("luasnip")

return {
  ['<c-k>'] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}),
  ['<c-j>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}),
  ['<c-u>'] = cmp.mapping.scroll_docs(-4),
  ['<c-d>'] = cmp.mapping.scroll_docs(4),
  ['<c-e>'] = cmp.mapping.abort(),
  ['<c-s>'] = cmp.mapping.complete({ reason = cmp.ContextReason.Auto }),
  ['<c-y>'] = cmp.mapping.confirm({ select = false }),
  ['<cr>'] = cmp.mapping.confirm({
    behavior = cmp.ConfirmBehavior.Insert,
    select = true,
  }),
  ['s-k'] = cmp.mapping(function(fallback)
    if cmp.visible_docs() then
      cmp.close_docs()
    elseif cmp.visible() then
      cmp.open_docs()
    else
      fallback()
    end
  end),
  ['<tab>'] = cmp.mapping(function(fallback)
    if luasnip.jumpable(1) then
      luasnip.jump(1)
    else
      fallback()
    end
  end, {'i', 's'}),
  ['<s-tab>'] = cmp.mapping(function(fallback)
    if luasnip.jumpable(-1) then
      luasnip.jump(-1)
    else
      fallback()
    end
  end, {'i', 's'}),
}
