require('mason').setup()
require('mason-lspconfig').setup({ automatic_installation = true })

-- Update vims LSP capabilities with the installed autocomplete plugin
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- LSP configs: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- PHP
require('lspconfig').intelephense.setup({ capabilities = capabilities })

-- JavaScript, TypeScript, Vue
require('lspconfig').volar.setup({
  capabilities = capabilities,
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
})

-- TailwindCSS
require('lspconfig').tailwindcss.setup({ capabilities = capabilities })

-- GO
require('lspconfig').gopls.setup({ capabilities = capabilities })

-- Dart
require('lspconfig').dartls.setup({ capabilities = capabilities })

-- JSON
require('lspconfig').jsonls.setup({
  capabilities = capabilities,
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
    },
  },
})

-- Keymaps
vim.keymap.set('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
