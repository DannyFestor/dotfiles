local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- left option key as alt key
config.send_composed_key_when_left_alt_is_pressed = true
-- config.send_composed_key_when_right_alt_is_pressed = true -- no right option key on japanese keyboards ;(

-- color scheme
config.color_scheme = "tokyonight_moon"

-- font
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
-- config.font = wezterm.font("AnonymicePro Nerd Font Propo", { weight = "Bold" })
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
config.window_decorations = "RESIZE" -- DEFAULT: "TITLE | RESIZE" -- hides the title bar

-- Tab bar
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
	font_size = 18.0,

	-- font = wezterm.font("JetBrainsMono Nerd Font Mono"),
	font = wezterm.font("AnonymicePro Nerd Font Propo"),
}

config.keys = {
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}

return config
