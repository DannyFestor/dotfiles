-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	require("user.plugins.comments"), -- "gc" to comment visual regions/lines
	require("user.plugins.gitsigns"), -- display git signs next to line number
	require("user.plugins.which-key"), -- show keybindings
	require("user.plugins.telescope"), -- fuzzy finder
	require("user.plugins.lsp"), -- lsp
	require("user.plugins.conform"), -- auto formatting
	require("user.plugins.nvim-cmp"), -- auto complete code
	require("user.plugins.colorscheme"), -- colorscheme
	require("user.plugins.todo-comments"), -- highlight todos in comments
	require("user.plugins.mini"), -- more movement commands
	require("user.plugins.treesitter"), -- syntax highlighting, navigate code (jump around class, function etc)
	require("user.plugins.neotree"), -- file tree
	require("user.plugins.copilot"), -- auto complete code

	-- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
	--    This is the easiest way to modularize your config.
	--
	--  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
	--    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
	-- { import = 'custom.plugins' },
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
