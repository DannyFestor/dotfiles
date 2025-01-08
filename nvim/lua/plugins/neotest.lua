local config = function()
	vim.keymap.set("n", "<leader>tn", function()
		require("neotest").run.run()
	end, { desc = "[t]est [n]earest test" })
	vim.keymap.set("n", "<leader>tf", function()
		require("neotest").run.run(vim.fn.expand("%"))
	end, { desc = "[t]est [f]ile" })
	vim.keymap.set("n", "<leader>ts", "<CMD>Neotest summary<CR>", { desc = "[t]est [s]summary" })
	vim.keymap.set("n", "<leader>to", "<CMD>Neotest output<CR>", { desc = "[t]est [o]utput" })

	require("neotest").setup({
		-- ...,
		adapters = {
			require("neotest-pest"),
			require("neotest-phpunit")({
				filter_dirs = { "vendor" },
			}),
			require("neotest-go"),
		},
	})
end

return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"V13Axel/neotest-pest",
		"olimorris/neotest-phpunit",
		"nvim-neotest/neotest-go",
	},
	config = config,
}
