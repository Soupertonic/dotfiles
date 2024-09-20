vim.g.floaterm_wintype = 'split'
vim.g.floaterm_height = 0.25

vim.keymap.set('n', '<leader>tc', ':FloatermNew<CR>')
vim.keymap.set('n', '<leader>tk', ':FloatermKill<CR>')
vim.keymap.set('n', '<leader>tt', ':FloatermToggle<CR>')
vim.keymap.set('n', '<leader>tp', ':FloatermPrev<CR>')
vim.keymap.set('n', '<leader>tn', ':FloatermNext<CR>')
