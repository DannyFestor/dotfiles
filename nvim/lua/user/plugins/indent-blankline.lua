require('ibl').setup({
    exclude = {
        filetypes = {
            'help',
            'terminal',
            'dashboard',
            'packer',
            'lspinfo',
            'TelescopePrompt',
            'TelescopeResults',
        },
        buftypes = {
            'terminal',
            'NvimTree',
        }
    }
--  show_trailing_blankline_indent = false,
--  show_first_indent_level = true,
})
