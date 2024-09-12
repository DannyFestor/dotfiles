-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- space/tab options
vim.opt.shiftwidth = 4 -- number of spaces inserted for each indentation (default: 8)
vim.opt.tabstop = 4 -- insert n spaces for a tab (default: 8)
vim.opt.softtabstop = 4 -- number of spaces that a tab counts for while performing editing operations (default: 0)
vim.opt.expandtab = true -- spaces instead of tabstop
vim.opt.smartindent = true -- automatic spaces in if statements etc
-- vim.opt.autoindent = true -- Copy indent from current line when starting new one (default: true)

vim.opt.wrap = false -- wrap long lines
vim.opt.linebreak = true -- Companion to wrap, don't split words (default: false)

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true -- great for movement 4j go down 4 rows

-- Show which line your cursor is on, highlight current line
vim.opt.cursorline = true

-- keep lines above and below cursor
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 8

-- command mode (:) autocomplete behaviour change (don't autocomplete first match, so no need to delete)
vim.opt.wildmode = "longest:full,full" -- complete the longest common match, and allow tabbing the results to fully complete them
vim.opt.completeopt = 'menuone,noselect' -- was: "menuone,longest,preview" -- also show menu when only one item

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
vim.opt.list = false -- enable the below listchars
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
-- vim.o.writebackup = false -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
vim.opt.signcolumn = "yes:1"
vim.opt.showmode = false -- hide mode <NORMAL, INSERT, VISUAL>
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
vim.opt.hlsearch = false

-- number column width
vim.opt.numberwidth = 4

-- disable swapfile
vim.opt.swapfile = false

-- show a tab line - 0: disable, 1: more than one tab, 2: always show
vim.opt.showtabline = 2

-- allow backspace on <indent, eol, start>
vim.opt.backspace = 'indent,eol,start'

-- popup menu height
vim.opt.pumheight = 10

-- show `` in markdown files without conceiling
vim.opt.conceallevel = 0

-- default file encoding
vim.opt.fileencoding = 'utf-8'

-- give neovim command line messages more space
vim.opt.cmdheight = 1

-- vim.opt.shortmess:append 'c' -- Don't give |ins-completion-menu| messages (default: does not include 'c')
-- vim.opt.iskeyword:append '-' -- Hyphenated words recognized by searches (default: does not include '-')
-- vim.opt.formatoptions:remove { 'c', 'r', 'o' } -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')
-- vim.opt.runtimepath:remove '/usr/share/vim/vimfiles' -- Separate Vim plugins from Neovim in case Vim still in use (default: includes this path if Vim is installed)
