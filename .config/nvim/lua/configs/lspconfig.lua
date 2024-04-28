local lspConfig = require('lspconfig')
local lspCapabilities = require('cmp_nvim_lsp').default_capabilities()

lspConfig.lua_ls.setup {
  capabilities = lspCapabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          'vim'
        }
      }
    }
  }
}

lspConfig.tsserver.setup { capabilities = lspCapabilities }
lspConfig.angularls.setup { capabilities = lspCapabilities }
lspConfig.rust_analyzer.setup { capabilities = lspCapabilities }

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
    bufmap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
    bufmap('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>')
    bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  end
})
