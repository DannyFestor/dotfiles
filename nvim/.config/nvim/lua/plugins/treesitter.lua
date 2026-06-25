return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- ensure these are installed by extending instead of overwriting the lazyvim default list
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "php",
        "query",
        "regex",
        "tsx",
        --        "typescript",
        "vim",
        "yaml",
      })
    end,
  },
}
