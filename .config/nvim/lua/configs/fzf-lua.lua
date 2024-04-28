require('fzf-lua').setup({})

vim.keymap.set('n', '<leader>f', '<cmd>lua require("fzf-lua").files({ path_shorten = true })<CR>', { silent = true })
vim.keymap.set('n', '<leader>b', '<cmd>lua require("fzf-lua").buffers()<CR>', { silent = true })
vim.keymap.set('n', '<leader>s', '<cmd>lua require("fzf-lua").grep()<CR>', { silent = true })
vim.keymap.set('n', '<leader>a', '<cmd>lua require("fzf-lua").lsp_code_actions()<cr>')
