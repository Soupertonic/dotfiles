local itemKindIcons = {
  Module = " 󱗽 ",
  Folder = " 󰉖 ",
  File = "  ",
  Text = "  ",
  Class = " 󱡗 ",
  Struct = " 󰔌 ",
  Interface = "  ",
  Constant = " 󰏿 ",
  Field = " 󰘧 ",
  Variable = " 󰘧 ",
  Function = " 󰊕 ",
  Method = " 󰊕 ",
  Snippet = "  ",
  Constructor = " 󱐋 ",
  Enum = " 󰀻 ",
  EnumMember = " 󰦨 ",
}

-- this is a test

return {
  fields = { "kind", "abbr", "menu" },
  format = function (_, vim_item)
    vim_item.kind = itemKindIcons[vim_item.kind] or ""
    return vim_item
  end
}
