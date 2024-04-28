vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>',
  { desc = 'Move focus to the left window' })

vim.keymap.set('n', '<C-l>', '<C-w><C-l>',
  { desc = 'Move focus to the right window' })

vim.keymap.set('n', '<C-j>', '<C-w><C-j>',
  { desc = 'Move focus to the lower window' })

vim.keymap.set('n', '<C-k>', '<C-w><C-k>',
  { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>tc', ':FloatermNew<CR>')
vim.keymap.set('n', '<leader>tk', ':FloatermKill<CR>')
vim.keymap.set('n', '<leader>tt', ':FloatermToggle<CR>')
vim.keymap.set('n', '<leader>tp', ':FloatermPrev<CR>')
vim.keymap.set('n', '<leader>tn', ':FloatermNext<CR>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
