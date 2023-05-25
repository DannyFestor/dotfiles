require('mason').setup()
require('mason-lspconfig').setup({ automatic_installation = true })

-- Update vims LSP capabilities with the installed autocomplete pluginls
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- LSP configs: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- PHP
require('lspconfig').intelephense.setup({ 
  on_attach = on_attach,
  capabilities = capabilities 
})

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

-- SQL
require('lspconfig').sqlls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Rust
require('lspconfig').rls.setup({ capabilities = capabilities })
require('lspconfig').rust_analyzer.setup({ capabilities = capabilities })

-- Zig
require('lspconfig').zls.setup({ capabilities = capabilities })

-- Run external tools like ESLint, Automatic Formatting (prettier, gofmt, dart format)
require('null-ls').setup({
  sources = {
    -- ESLint
    require('null-ls').builtins.diagnostics.eslint_d.with({
      condition = function(utils)
        return utils.root_has_file({ '.eslintrc.js' })
      end,
    }),
    require('null-ls').builtins.diagnostics.trail_space.with({ disabled_filetypes = { 'NvimTree' } }),
    require('null-ls').builtins.formatting.eslint_d.with({
      condition = function(utils)
        return utils.root_has_file({ '.eslintrc.js' })
      end,
    }),

    -- Prettier
    require('null-ls').builtins.formatting.prettierd,

    -- GO
    require('null-ls').builtins.code_actions.gomodifytags,
    require('null-ls').builtins.formatting.gofmt,
    require('null-ls').builtins.formatting.goimports,

    -- Dart Format
    require('null-ls').builtins.formatting.dart_format,
  },
})

require('mason-null-ls').setup({ automatic_installation = true })

-- Keymaps
vim.keymap.set('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')                -- show references
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')              -- show definition of symbol under cursor
vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')    -- rename variable/function and change all references in code
vim.keymap.set('n', '<C-p>', '<cmd>lua vim.lsp.buf.signature_help()<CR>') -- show what variable comes at which position in function signature, must be inside brackets
vim.keymap.set('n', '<Leader>rf', '<cmd>lua vim.lsp.buf.format()<CR>')    -- reformat code with specified null-ls language server

-- Commands
-- vim.api.nvim_create_user_command('Format', vim.lsp.buf.formatting_seq_sync, {})

-- Diagnostic configuration
-- vim.diagnostics.config({
--   virtual_text = false,
--   float = {
--     source = true,
--   }
-- })
