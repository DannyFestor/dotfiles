require('nvim-treesitter.configs').setup({
  ensure_installed = 'all',
  highlight = {
    enable = true,
    -- additional_vim_regex_highlighting = true,
  },
  context_commentstring = {
    enable = true
  },
  {
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          -- add daa to delete parameters, vif select inside function etc
          ['if'] = '@function.inner',
          ['af'] = '@function.outer',
          ['ia'] = '@parameter.inner',
          ['aa'] = '@parameter.outer',
        },
      },
    },
  },
})

