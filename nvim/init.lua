require("core.options")
require("core.keymaps")

-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.neotree"), -- File Explorer
	require("plugins.colortheme"), -- Color Theme
	require("plugins.bufferline"), -- Buffer Line Theming
	require("plugins.lualine"), -- Status Line
	require("plugins.treesitter"), -- Syntax Highlighting
	require("plugins.telescope"), -- Fuzzy Finder
	require("plugins.autocomplete"), -- Auto Completion Popup
	require("plugins.lsp"), -- Language Server Protocol
	-- require("plugins.none-ls"), -- Auto Format
	require("plugins.conform"), -- Auto Format
	require("plugins.nvim-lint"), -- Linters
	require("plugins.neotest"), -- Testing
	require("plugins.gitsigns"), -- Show Git Indicators
	require("plugins.alpha"), -- Startup Dashboard
	require("plugins.fugitive"), -- Git Integration Shortcuts etc
	require("plugins.which-key"), -- Keymap Popup
	require("plugins.highlight-todo"), -- Highlight TODOs
	require("plugins.show-colors"), -- Show Colors in CSS
	require("plugins.copilot"), -- Github Copilot
	require("plugins.zen-mode"), -- Zen Mode for Distraction Free Writing
})

vim.filetype.add({
	pattern = {
		[".*%.blade%.php"] = "blade",
	},
})
