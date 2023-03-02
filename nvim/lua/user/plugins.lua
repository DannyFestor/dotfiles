-- Install packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Initialize Packer
require('packer').reset()
require('packer').init({
  compile_path = vim.fn.stdpath('data')..'/site/plugin/packer_compiled.lua',
  display = {
    open_fn = function()
      -- open packer in a floating window instead of tab
      return require('packer.util').float({border = 'solid'})
    end,
  },
})

-- Import use function
local use = require('packer').use

use('wbthomason/packer.nvim')

-- One Dark Theme
use({ 'joshdick/onedark.vim', 
  config = function()
    vim.cmd('colorscheme onedark')

    -- don't change text color of spell miss words
    vim.cmd('highlight SpellBad ctermfg=NONE')
    vim.cmd('highlight SpellBad guifg=NONE')

    -- NvimTree Indent Color
    vim.cmd('highlight NvimTreeIndentMarker guifg=#555555')

    vim.api.nvim_set_hl(0, 'StatusLineNonText', {
      fg = vim.api.nvim_get_hl_by_name('NonText', true).foreground,
      bg = vim.api.nvim_get_hl_by_name('StatusLine', true).background,
    })
  end,
})

-- Commenting support
use('tpope/vim-commentary') -- Comment line with gcc, 5gcc to comment out 5 lines, v to select, then gc to comment

-- Add, change and delete surrounding text
-- cs" <bold> - change surrounding " to <bold> tag, cs' " to make ' to " etc, cst " html tag to "
-- dst - delete surrounding tag
use('tpope/vim-surround')

-- Useful commands like :Rename, :SudoWrite
use('tpope/vim-eunuch')

-- Pairs of handy bracked mappings, like [b for :bnext (next buffer) and ]b (previous buffer)
use('tpope/vim-unimpaired')

-- Indent autodetection with editorconfig support (if project uses tab, 2 spaces, 4 spaces etc)
use('tpope/vim-sleuth')

-- Allow plugins to enable repeating of commands like the . key does for vim built-in commands
use('tpope/vim-repeat')

-- More languages
use('sheerun/vim-polyglot')

-- Navigate between vim splits and tmux splits
-- use('christoomey/vim-tmux-navigator')

-- Jump to the last location when opening a file
use('farmergreg/vim-lastplace')

-- Enable * searching with visually selected text - go to word -> select word with star, makes this also work with visual selected text
use('nelstrom/vim-visual-star-search')

-- Automatically create parent dirs when saving
use('jessarcher/vim-heritage')

-- Text objects for HTML attributes
-- <div id="test" class="test"> -> navigate over test -> vix, vax select whole class="test" string
use({
  'whatyouhide/vim-textobj-xmlattr',
  requires = 'kana/vim-textobj-user',
})

-- Automatically set the working directory to the project root
use({
  'airblade/vim-rooter',
  setup = function()
    -- Instead of running every time a file is opened, just run it when vim starts
    vim.g.rooter_manual_only = 1
  end,
  config = function()
    vim.cmd('Rooter')
  end,
})

-- Automatically add closing brackets, quotes etc
use({
  'windwp/nvim-autopairs',
  config = function()
    require('nvim-autopairs').setup()
  end,
})

-- Smooth scrolling with ctrl_d, ctrl_u
use({
  'karb94/neoscroll.nvim',
  config = function()
    require('neoscroll').setup()
  end,
})

-- Closing buffer with :Bdelete<CR> leaves split window open
use({
  'famiu/bufdelete.nvim',
  config = function()
    vim.keymap.set('n', '<Leader>q', ':Bdelete<CR>')
  end,
})

-- Split arrays/objects to multiple lines with g shift_s
-- Join arrays/objects to one line with g shift_j
use({
  'AndrewRadev/splitjoin.vim',
  config = function()
    vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
    vim.g.splitjoin_trailing_comma = 1
    vim.g.splitjoin_php_method_chain_full = 1
  end,
})

-- Automatically fix indentation when pasing code
use({
  'sickill/vim-pasta',
  config = function()
    vim.g.pasta_disabled_filetypes = { 'fugitive' }
  end,
})

-- Fuzzy Find files by typing parts file of filename
use({
  'nvim-telescope/telescope.nvim',
  requires = {
    'nvim-lua/plenary.nvim',
    'kyazdani42/nvim-web-devicons',
    'nvim-telescope/telescope-live-grep-args.nvim',
    { 
      'nvim-telescope/telescope-fzf-native.nvim', run = 'make'
    },
  },
  config = function()
    require('user/plugins/telescope')
  end,
})

-- File Tree Sidebar
use({
  'kyazdani42/nvim-tree.lua',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    require('user/plugins/nvim-tree')
  end,
})

-- Improved status line
use({
  'nvim-lualine/lualine.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    require('user/plugins/lualine')
  end
})

-- Display Buffers as Tabs
use({
  'akinsho/bufferline.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  after = 'onedark.vim',
  config = function()
    require('user/plugins/bufferline')
  end,
})

-- Display indentation lines
use({
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    -- require('indent_blankline').setup()
   require('user/plugins/indent-blankline')
  end,
})

-- Add a dashboard
use({
 'glepnir/dashboard-nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    -- require('dashboard').setup()
    require('user/plugins/dashboard')
  end,
})

-- Git Integration
use({
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
    vim.keymap.set('n', ']h', ':Gitsigns next_hunk<CR>')
    vim.keymap.set('n', '[h', ':Gitsigns prev_hunk<CR>')
    vim.keymap.set('n', 'gs', ':Gitsigns stage_hunk<CR>')
    vim.keymap.set('n', 'gS', ':Gitsigns undo_stage_hunk<CR>')
    vim.keymap.set('n', 'gp', ':Gitsigns preview_hunk<CR>')
    vim.keymap.set('n', 'gb', ':Gitsigns blame_line<CR>')
  end,
})

-- -- My plugins here
-- -- use 'foo1/bar1.nvim'
-- -- use 'foo2/bar2.nvim'

-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if packer_bootstrap then
require('packer').sync()
end

-- Automatically resource plugins.lua and run :PackerCompile when plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
