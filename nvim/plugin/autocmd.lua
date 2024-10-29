vim.api.nvim_create_autocmd("LspAttach", {
  desc = "LSP Actions",
  callback = function()
    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { buffer = true })
    vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { buffer = true })
    vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", { buffer = true })
    vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", { buffer = true })
    vim.keymap.set("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", { buffer = true })
    vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", { buffer = true })
    vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { buffer = true })
    vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>", { buffer = true })
    vim.keymap.set("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>", { buffer = true })
    vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", { buffer = true })
    vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", { buffer = true })
    vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>", { buffer = true })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  desc = "Disable automatically adding comments for new lines",
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove "c"
    vim.opt.formatoptions:remove "r"
    vim.opt.formatoptions:remove "o"
    vim.opt.signcolumn = "yes"
  end,
})
