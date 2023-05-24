require('nvim-treesitter.configs').setup({
  -- ensure_installed = 'all',
  highlight = { -- this destroys php automatic indent
     enable = true,
     additional_vim_regex_highlighting = true,
     disable = { 'NvimTree' },
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

