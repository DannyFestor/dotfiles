return { -- File tree
	"mfussenegger/nvim-lint", -- opts = opts,
	optional = true,
	opts = {
		-- Linters
		linters_by_ft = {
			-- lua = { "luacheck" },
			php = { "phpstan", "phpcs" },
			javascript = { "biome", "eslint_d", "eslint" },
			typescript = { "biome", "eslint_d", "eslint" },
		},
	},
}
