-- Highlight todo, notes, etc in comments
local opts = { signs = false }

return {
	"folke/todo-comments.nvim",
	event = "VimEnter",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = opts,
}
