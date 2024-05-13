-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- space/tab options
vim.opt.shiftwidth = 4 --
vim.opt.tabstop = 4 --
vim.opt.softtabstop = 4 --
vim.opt.expandtab = true -- spaces instead of tabstop
vim.opt.smartindent = true -- automatic spaces in if statements etc

vim.opt.wrap = false -- wrap long lines

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true -- great for movement 4j go down 4 rows

-- Show which line your cursor is on, highlight current line
vim.opt.cursorline = true

-- command mode (:) autocomplete behaviour change (don't autocomplete first match, so no need to delete)
vim.opt.wildmode = "longest:full,full" -- complete the longest common match, and allow tabbing the results to fully complete them
vim.opt.completeopt = "menuone,longest,preview" -- also show menu when only one item

-- show full path and filename in window/tmux information
vim.opt.title = true

-- enable mouse
vim.opt.mouse = "a"

-- Enable all colors available to terminal
vim.opt.termguicolors = true

-- spellcheck
vim.opt.spell = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true -- ignore case
vim.opt.smartcase = true -- but only when searching lower case

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- Control how vim renders invisible characters
vim.opt.list = true -- enable the below listchars
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.fillchars:append({ eob = " " }) -- remove the ~ from end of buffer

-- Create new split below/right of active tab
-- Configure how new splits should be opened
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Minimal number of screen lines to keep above and below the cursor. Keep cursor away from start/end of screen if possible
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

-- Use default clipboard
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- ask for confirmation instead of erroring
vim.opt.confirm = true

-- persistent undo
vim.opt.undofile = true
vim.opt.breakindent = true -- maintain indent when wrapping indented lines
-- vim.opt.backup = true -- automatically save a backup file
-- vim.opt.backupdir:remove('.') -- keep backups out of the current directory
-- vim.opt.shortmess:append({ I = true }) -- disable the splash screen
vim.opt.signcolumn = "yes:1"
vim.opt.showmode = false
vim.opt.updatetime = 250 -- Set updatime to 1ms longer than the default to prevent polyglot from changing it -- Decrease update time
-- vim.opt.redrawtime = 10000 -- Allow more time for loading syntax on large files

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
