local config = function()
	vim.keymap.set("n", "<leader>tn", function()
		require("neotest").run.run()
	end, { desc = "[t]est [n]earest test" })
	vim.keymap.set("n", "<leader>tf", function()
		require("neotest").run.run(vim.fn.expand("%"))
	end, { desc = "[t]est [f]ile" })

	require("neotest").setup({
		-- ...,
		adapters = {
			require("neotest-pest"),
			require("neotest-phpunit"),
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
