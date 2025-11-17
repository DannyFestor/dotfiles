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
			require("neotest-pest")({
				ignore_dirs = { "vendor", "node_modules" },
				root_ignore_files = { "phpunit-only.tests" },
				test_file_suffixes = { "Test.php", "_test.php", "PestTest.php" },
				sail_enabled = function()
					return false
				end,
				sail_executable = "vendor/bin/sail",
				sail_project_path = "/var/www/html",
				pest_cmd = "vendor/bin/pest",
				parallel = 16,
				compact = false,
				-- results_path = function() "/some/accessible/path" end,
			}),

			require("neotest-phpunit")({
				filter_dirs = { "vendor", "node_modules" },
				root_ignore_files = { "tests/Pest.php" }, -- When test is installed ignore project
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
