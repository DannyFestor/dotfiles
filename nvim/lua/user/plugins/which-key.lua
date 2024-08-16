local config = function()
	require("which-key").setup()

	-- Document existing key chains
	require("which-key").add({
		{ "<leader>c", group = "[C]ode" },
		{ "<leader>d", group = "[D]ocument" },
		{ "<leader>h", group = "Git [H]unk" },
		{ "<leader>r", group = "[R]ename" },
		{ "<leader>s", group = "[S]earch" },
		{ "<leader>t", group = "Git [T]oggle Blame" },
		{ "<leader>w", group = "[W]orkspace" },

		-- { "", group = "[C]ode" },
		-- { "", desc = "<leader>r_", hidden = true },
		-- { "", group = "[S]earch" },
		-- { "", desc = "<leader>s_", hidden = true },
		-- { "", group = "[W]orkspace" },
		-- { "", group = "[R]ename" },
		-- { "", group = "[D]ocument" },
		-- { "", desc = "<leader>d_", hidden = true },
		-- { "", group = "[C]ode", hidden = true },
		-- { "", desc = "<leader>w_", hidden = true },

		-- { "", group = "[W]orkspace" },
		-- { "", group = "[C]ode" },
		-- { "", group = "[C]ode", hidden = true },
		-- { "", group = "[R]ename" },
		-- { "", group = "[D]ocument" },
		-- { "", group = "[S]earch" },
		-- { "", desc = "", hidden = true, mode = { "n", "n", "n", "n" } },
	})
end

return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = config,
}
