---@param bufnr integer
---@param ... string
---@return string
local function first(bufnr, ...)
	local conform = require("conform")
	for i = 1, select("#", ...) do
		local formatter = select(i, ...)
		if conform.get_formatter_info(formatter, bufnr).available then
			return formatter
		end
	end
	return select(1, ...)
end

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
			php = function(bufnr)
				return { first(bufnr, "pint", "php-cs-fixer") }
			end,
			javascript = function(bufnr)
				return { first(bufnr, "biome", "prettierd", "prettier"), stop_after_first = true }
			end,
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
