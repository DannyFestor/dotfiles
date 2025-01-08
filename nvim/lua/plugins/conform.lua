return { -- File tree
	"stevearc/conform.nvim", -- opts = opts,
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>f",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},

	opts = {
		-- Define your formatters
		formatters_by_ft = {
			lua = { "stylua" },
			php = { "pint", "php-cs-fixer" },
			javascript = { "biome", "prettierd", "prettier", stop_after_first = true },
			go = { "gofmt", "goimports" },
		},
		-- Set default options
		default_format_opts = {
			lsp_format = "fallback",
		},
		-- Set up format-on-save
		format_on_save = { timeout_ms = 500 },
		-- Customize formatters
		-- formatters = {
		-- 	shfmt = {
		-- 		prepend_args = { "-i", "2" },
		-- 	},
		-- },
	},
}
