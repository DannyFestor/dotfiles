return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    optional = true,
    lazy = true,
    cmd = "ConformInfo",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "goimports", "gofmt" }, -- organize go imports
      },
      formatters = {
        goimports = {
          command = "goimports",
          args = { "-local", "code.test.live" },
        },
      },
      format_on_save = {
        lsp_fallback = true,
        async = true,
        timeout_ms = 2000,
      },
    },
  },
}
