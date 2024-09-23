require("oil").setup {
  default_file_explorer = true,
  use_default_keymaps = false,
  view_options = {
    show_hidden = true,
  },
  keymaps = {
    ["<CR>"] = "actions.select",
    ["<C-]>"] = "actions.refresh",
    ["<C-p>"] = "actions.preview",
    ["<C-c>"] = "actions.close",
    ["-"] = "actions.parent",
    ["_"] = "actions.open_cwd",
    ["g."] = "actions.toggle_hidden",
    ["g\\"] = "actions.toggle_trash",
  },
}
