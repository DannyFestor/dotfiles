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
	-- Detect tabstop and shiftwidth automatically
	"tpope/vim-sleuth",

	-- "gc" to comment visual regions/lines
	require("user.plugins.comments"),

	-- Adds git related signs to the gutter, as well as utilities for managing changes
	require("user.plugins.gitsigns"),

	-- Show Hotkey Information etc.
	require("user.plugins.which-key"),

	-- fuzzy finder
	require("user.plugins.telescope"),

	-- LSP Configuration & Plugins
	require("user.plugins.lsp"),

	-- Autoformat
	require("user.plugins.conform"),

	-- Autocompletion
	require("user.plugins.nvim-cmp"),

	-- Color Scheme
	require("user.plugins.colorscheme"),

	-- Highlight TODO, NOTE in comments
	require("user.plugins.todo-comments"),

	-- more movement commands, better status line etc
	require("user.plugins.mini"),

	-- syntax highlighting, navigate code (jump around class, function etc)
	require("user.plugins.treesitter"),

	-- file tree
	require("user.plugins.neotree"),

	-- auto complete code
	require("user.plugins.copilot"),

	-- additional go Commands: :GoTagAdd json, :GoIfErr and more
	require("user.plugins.gopher"),

	-- zen mode
	require("user.plugins.zen-mode"),

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
