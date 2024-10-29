vim.keymap.set("n", "M", ":make<cr>")
vim.keymap.set("n", "mm", ":make<space>")

vim.keymap.set("n", "<leader>e", ":Oil<cr>")
vim.keymap.set("n", "<leader>i", ":Inspect<cr>")

vim.keymap.set("n", "<c-h>", "<c-w><c-h>")
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
vim.keymap.set("n", "<c-l>", "<c-w><c-l>")

vim.keymap.set("n", "<m-l>", "<c-w>5<")
vim.keymap.set("n", "<m-h>", "<c-w>5>")
vim.keymap.set("n", "<m-k>", "<c-w>+")
vim.keymap.set("n", "<m-j>", "<c-w>-")

vim.keymap.set("n", "<esc>", function()
  if vim.opt.hlsearch:get() then
    vim.cmd.nohl()
    return ""
  else
    return "<esc>"
  end
end)

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
