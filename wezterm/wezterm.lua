local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- color scheme
config.color_scheme = "tokyonight_moon"

-- font
-- config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font = wezterm.font("AnonymicePro Nerd Font Propo")
config.font_size = 20.0
config.line_height = 1.8

-- window
config.window_background_opacity = 0.98
config.macos_window_background_blur = 10
config.window_padding = {
	left = 3,
	right = 3,
	top = 3,
	bottom = 3,
}

-- Tab bar
config.enable_tab_bar = false
-- config.window_frame = {
-- 	font_size = 18.0,
--
-- 	-- font = wezterm.font("JetBrainsMono Nerd Font Mono"),
-- 	font = wezterm.font("AnonymicePro Nerd Font Propo"),
-- }

return config
