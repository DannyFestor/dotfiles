-- space/tab options
vim.opt.shiftwidth = 4      --
vim.opt.tabstop = 4         --
vim.opt.softtabstop = 4     -- 
vim.opt.expandtab = true    -- spaces instead of tabstop
vim.opt.smartindent = true  -- automatic spaces in if statements etc

vim.opt.wrap = false -- wrap long lines

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true -- great for movement 4j go down 4 rows

-- highlight current line
vim.opt.cursorline = true

-- command mode (:) autocomplete behaviour change (don't autocomplete first match, so no need to delete) 
vim.opt.wildmode = 'longest:full,full' -- complete the longest common match, and allow tabbing the results to fully complete them
vim.opt.completeopt = 'menuone,longest,preview' -- also show menu when only one item

-- show full path and filename in window/tmux information 
vim.opt.title = true

-- enable mouse
vim.opt.mouse = 'a'
--Laracasts

-- Enable all colors available to terminal
vim.opt.termguicolors = true

-- spellcheck
vim.opt.spell = true
vim.opt.ignorecase = true  -- ignore case
vim.opt.smartcase = true   -- but only when searching lower case

-- Control how vim renders invisible characters
vim.opt.list = true -- enable the below listchars
vim.opt.listchars = { tab = '▸ ', trail = '·' }
vim.opt.fillchars:append({ eob = ' ' }) -- remove the ~ from end of buffer

-- Create new split below/right of active tab
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Keep cursor away from start/end of screen if possible
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Use default clipboard
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard

-- ask for confirmation instead of erroring
vim.opt.confirm = true

-- persistent undo
vim.opt.undofile = true
-- vim.opt.breakindent = true -- maintain indent when wrapping indented lines
-- vim.opt.backup = true -- automatically save a backup file
-- vim.opt.backupdir:remove('.') -- keep backups out of the current directory
-- vim.opt.shortmess:append({ I = true }) -- disable the splash screen
vim.opt.signcolumn = 'yes:1'
-- vim.opt.showmode = false
-- vim.opt.updatetime = 4001 -- Set updatime to 1ms longer than the default to prevent polyglot from changing it
-- vim.opt.redrawtime = 10000 -- Allow more time for loading syntax on large files
