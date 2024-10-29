require("blink.cmp").setup {
  windows = {
    autocomplete = {
      auto_show = false,
    },
    documentation = {
      auto_show = false,
    },
  },
  accept = {
    auto_brackets = {
      enabled = true,
    },
  },
  trigger = {
    signature_help = {
      enabled = true,
    },
  },
  keymap = {
      show = '<C-space>',
      hide = '<C-e>',
      accept = '<Tab>',
      select_prev = { '<Up>', '<C-k>' },
      select_next = { '<Down>', '<C-j>' },

      show_documentation = '<C-space>',
      hide_documentation = '<C-space>',
      scroll_documentation_up = '<C-u>',
      scroll_documentation_down = '<C-d>',

      snippet_forward = '<Tab>',
      snippet_backward = '<S-Tab>',
    },
}
