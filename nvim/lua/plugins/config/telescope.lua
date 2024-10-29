local telescope = require("telescope")
local telescope_builtin = require("telescope.builtin")

telescope.setup {
  defaults = {
    file_ignore_patterns = {
     ".git",
     "node_modules",
    },
  },
  extensions = {
    fuzzy = true,
    override_generic_sorter = true,
    override_file_sorter = true,
    case_mode = "ignore_case",
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    colorscheme = {
      enable_preview = true,
    },
  },
}

telescope.load_extension("fzf")
telescope.load_extension("ui-select")

vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})
vim.keymap.set('n', '<leader>T', telescope_builtin.colorscheme, {})
