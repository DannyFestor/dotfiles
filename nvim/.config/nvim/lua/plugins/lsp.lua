return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- general
        "shellcheck",
        "shfmt",

        -- php
        "intelephense",
        "phpstan",
        "pint",

        -- go
        "goimports",
        "golangci-lint",
        "gomodifytags",
        "gopls",
        "gotests",
        "staticcheck",

        -- lua
        "lua-language-server",
        "stylua",

        -- "tsserver",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        stylua = {},
        intelephense = {},
        gofmt = {},
        goimports = {},
        -- tsserver = {},
      },

      dependencies = {
        "jose-elias-alvarez/typescript.nvim",
        init = function()
          require("lazyvim.util").lsp.on_attach(function(_, buffer)
          -- stylua: ignore
          vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
            vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
          end)
        end,
      },

      -- you can do any additional lsp server setup here
      -- return true if you don't want this server to be setup with lspconfig
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      setup = {
        -- example to setup with typescript.nvim
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true
        end,
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts) end,
      },
    },
  },
}
