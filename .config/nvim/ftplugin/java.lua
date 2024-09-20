require("jdtls").start_or_attach {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  cmd = { vim.fn.expand('~/.local/share/nvim/mason/bin/jdtls') },
  root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
  java = {
    signatureHelp = {
      enabled = true
    },
  },
}
