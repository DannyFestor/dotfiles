vim.keymap.set('n', '<Leader>tn', ':TestNearest<CR>')
vim.keymap.set('n', '<Leader>tf', ':TestFile<CR>')
vim.keymap.set('n', '<Leader>ts', ':TestSuite<CR>')
vim.keymap.set('n', '<Leader>tl', ':TestLast<CR>')
vim.keymap.set('n', '<Leader>tv', ':TestVisit<CR>')

-- vim.cmd([[
--   function! FloatermStrategy(cmd)
--     execute 'silent FloatermKill'
--     execute 'FloatermNew! '.a:cmd.' |less -X'
--   endfunction
-- 
--   let g:test#custom_strategies = {'floaterm': function('FloatermStrategy')}
--   let g:test#strategy = 'floaterm'
-- ]])

vim.g['test#custom_strategies'] = {
  toggleterm = function(cmd)
    require('floaterm').exec(cmd)
  end,
}
vim.g['test#strategy'] = 'floaterm'
